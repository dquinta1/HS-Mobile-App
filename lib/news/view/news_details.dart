import 'package:blogs_repository/blogs_repository.dart';
import 'package:flutter/material.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({Key? key, required Blog? blog})
      : _blog = blog,
        super(key: key);

  static Route route(Blog? blog) {
    return MaterialPageRoute<void>(builder: (_) => NewsDetails(blog: blog));
  }

  final Blog? _blog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              primary: Colors.black,
            ),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          if (_blog == null)
            const Center(child: Text('This Blog is Empty'))
          else
            Center(child: Text(_blog!.title))
        ],
      )),
    );
  }
}
