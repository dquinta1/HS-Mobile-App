import 'package:blogs_repository/blogs_repository.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
          if (_blog == null)
            const Center(child: Text('This Blog is Empty'))
          else
            _BlogDetails(
              author: _blog!.author,
              body: _blog!.body,
              photo: _blog!.photo,
              title: _blog!.title,
              date: _blog!.date,
              controller: ScrollController(),
            ),
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
        ],
      )),
    );
  }
}

class _BlogDetails extends StatelessWidget {
  const _BlogDetails({
    Key? key,
    String? author,
    String? body,
    String? photo,
    required String title,
    required DateTime date,
    required ScrollController controller,
  })  : _author = author,
        _body = body,
        _photo = photo,
        _title = title,
        _date = date,
        _scrollController = controller,
        super(key: key);

  final String? _author;
  final String? _body;
  final String? _photo;
  final String _title;
  final DateTime _date;
  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        children: [
          if (_photo == null)
            Container()
          else
            Image.network(
              _photo!,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
            ),
          Padding(
            padding: const EdgeInsets.all(6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        _title,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        softWrap: false,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Text(
                      DateFormat.yMMMd().format(_date),
                      textAlign: TextAlign.end,
                      style: const TextStyle(fontSize: 18, color: Colors.grey),
                    )
                  ],
                ),
                if (_body == null)
                  const Center(
                    child: Text('This Blog has no body'),
                  )
                else
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 4, 4, 8),
                    child: Text(_body!),
                  ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(4, 4, 6, 8),
                  child: Row(
                    children: [
                      Expanded(child: Container()),
                      Text(
                        _author == null ? 'by Anonymous' : 'by $_author',
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
