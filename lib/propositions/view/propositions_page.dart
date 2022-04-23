import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hs_mobile_app/env_config.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:storage_repository/storage_repository.dart';

class PropositionsPage extends StatelessWidget {
  const PropositionsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return StatefulPropositionsPage(firebaseStorage :
      context.read<IStorageRepository>());
  }
}

class StatefulPropositionsPage extends StatefulWidget {

  const StatefulPropositionsPage({ Key? key,
    required IStorageRepository firebaseStorage}) :
        _firebaseStorage = firebaseStorage, super(key: key);

  final IStorageRepository _firebaseStorage;

  @override
  _PropositionsPageState createState() => _PropositionsPageState();
}

class _PropositionsPageState extends State<StatefulPropositionsPage>
    with TickerProviderStateMixin{
  late Future<dynamic> _propositions;

  Future<dynamic> getPropositionsData() async {

    final urlStr = await widget._firebaseStorage.getFileUrlByPath(
        path:'propositions/propositions.json');
    final url = Uri.parse(urlStr);
    final response = await http.get(url);
    return jsonDecode(response.body);
  }

  @override
  void initState() {
    super.initState();
    if(envConfig == EnvironmentConfiguration.prod) {
      _propositions = getPropositionsData();
    }
  }

  @override
  Widget build(BuildContext context){
    if(envConfig != EnvironmentConfiguration.prod) {
      return Container();
    }
    return FutureBuilder<dynamic>(
        future: _propositions,
        builder: (context, snapshot){
          if (snapshot.hasData) {
            final data = List<Map>.from(snapshot.data as List);
            return DefaultTabController(
                length: data.length,
                child: Column(
                    children: [
                      TabBar(
                        //Add a TabBar for users to navigate from prop 1 to 6
                        isScrollable: true,
                        tabs: List.generate(data.length, (index){
                          return Tab(
                              child: Text(
                                data[index]['title'],
                                style: const TextStyle(color: Colors.black),
                              )
                          );
                        }),
                      ),
                      Expanded(
                          child: TabBarView(
                            children: List.generate(data.length, (index){
                              return ListView(
                                controller: ScrollController(),
                                children: List.generate(data[index]['images'].length+1, (imageIdx) {
                                  return Card(
                                      child: imageIdx == 0 ?
                                      Text(
                                          data[index]['description'],
                                          style: const TextStyle(fontSize: 20)
                                      ) :
                                      Row(
                                        children: [
                                          Expanded(
                                              child: Image(image: NetworkImage(
                                                  data[index]['images'][imageIdx-1]['src']))
                                          ) ,
                                          Expanded(
                                              child: Text(data[index]['images'][imageIdx-1]['title'])
                                          ),
                                        ],
                                      )
                                  );
                                }),
                              );
                            }),
                          )
                      )
                    ]
                )
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        }
    );
  }
}
