import 'package:blogs_repository/blogs_repository.dart';
import 'package:flutter/material.dart';

class NewsList extends StatefulWidget {
  const NewsList({
    Key? key,
    required List<Blog>? blogs,
    required bool refreshing,
    required bool fetchingMore,
  })  : _refreshing = refreshing,
        _fetchingMore = fetchingMore,
        _blogs = blogs,
        super(key: key);

  final bool _refreshing;
  final bool _fetchingMore;
  final List<Blog>? _blogs;

  @override
  _NewsListState createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  @override
  Widget build(BuildContext context) {
    return widget._blogs == null
        ? const Text('Empty List')
        : Column(
            children: [
              if (widget._refreshing)
                const Center(
                  child: CircularProgressIndicator(),
                )
              else
                Container(),
              ListView.builder(
                itemCount: widget._blogs!.length,
                itemBuilder: (context, index) {
                  return Text(widget._blogs![index].title);
                },
              ),
              if (widget._fetchingMore)
                const Center(
                  child: CircularProgressIndicator(),
                )
              else
                Container(),
            ],
          );
  }
}
