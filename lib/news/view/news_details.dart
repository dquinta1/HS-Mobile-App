import 'package:blogs_repository/blogs_repository.dart';
import 'package:flutter/material.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({Key? key, required Blog? blog})
      : _blog = blog,
        super(key: key);

  final Blog? _blog;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(_blog!.title));
  }
}
