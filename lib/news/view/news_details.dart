import 'package:blogs_repository/blogs_repository.dart';
import 'package:flutter/material.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({Key? key, required Blog? blog})
      : _blog = blog,
        super(key: key);

  final Blog? _blog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Center(child: Text(_blog!.title)),
    );
  }
}
