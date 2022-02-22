import 'package:blogs_repository/blogs_repository.dart';
import 'package:flutter/material.dart';

class NewsList extends StatefulWidget {
  const NewsList({Key? key, required List<Blog>? blogs})
      : _blogs = blogs,
        super(key: key);

  final List<Blog>? _blogs;

  @override
  _NewsListState createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  @override
  Widget build(BuildContext context) {
    return widget._blogs == null
        ? const Text('Empty List')
        : ListView.builder(
            itemCount: widget._blogs!.length,
            itemBuilder: (context, index) {
              return Text(widget._blogs![index].title);
            },
          );
  }
}
