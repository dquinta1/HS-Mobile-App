import 'dart:developer' as developer;

import 'package:blogs_repository/blogs_repository.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

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
                    child: _formatBlogBody(_body!),
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

Widget _formatBlogBody(String body) {
  final _body = <Widget>[];
  final _textSpans = <TextSpan>[];

  try {
    while (body.contains('[')) {
      // find index of '['
      final start = body.indexOf('[');

      // check if it is an image or a reference
      final bool isImage;
      if (body[start - 1] == '!') {
        isImage = true;
      } else {
        isImage = false;
      }

      // the Text part of the substring
      final text =
          isImage ? body.substring(0, start - 1) : body.substring(0, start);

      // extract values for title and reference
      final title = body.substring(start + 1, body.indexOf(']'));
      final url = body.substring(
          body.indexOf('(', start) + 1, body.indexOf(')', start));

      // format url part accordingly
      if (isImage) {
        // if there were textSpans above format them and append them
        if (_textSpans.isNotEmpty) {
          final formattedText =
              RichText(text: TextSpan(children: _textSpans.toList()));
          _body.add(formattedText);
          _textSpans.clear();
        }

        final image = Image.network(
          url,
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
        );

        // append formatted fragment to widget list
        _body
          ..add(Padding(
            padding: const EdgeInsets.all(4),
            child: Text(text),
          ))
          ..add(Padding(
            padding: const EdgeInsets.all(4),
            child: image,
          ))
          ..add(Padding(
            padding: const EdgeInsets.all(2),
            child: Text(
              title,
              textAlign: TextAlign.start,
            ),
          ));

        // isImage == false
      } else {
        // regular text
        final regular =
            TextSpan(style: const TextStyle(color: Colors.black), text: text);

        // link text
        final linkText = TextSpan(
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
            text: title,
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  print('Could not launch $url');
                  developer.log('Could not launch $url');
                  throw Exception('Could not launch $url');
                }
              });

        // append consecutive text spans
        _textSpans
          ..add(regular)
          ..add(linkText);
      }

      // change start index for body
      if (body.indexOf(')') + 1 < body.length) {
        body = body.substring(body.indexOf(')') + 1);
      } else {
        body = '';
        break;
      }
    }
  } catch (e) {
    developer.log(e.toString());
    print(e.toString());
    return const Text(
        'An error ocurred when formatting, check logs for more information.');
  }

  // edge case check
  if (body.isNotEmpty) {
    // if there was a textSpan before, append it
    if (_textSpans.isNotEmpty) {
      _textSpans.add(
          TextSpan(text: body, style: const TextStyle(color: Colors.black)));
    } else {
      _body.add(Padding(
        padding: const EdgeInsets.all(4),
        child: Text(body),
      ));
    }
  }

  // format the remaining textSpans
  if (_textSpans.isNotEmpty) {
    final formattedText =
        RichText(text: TextSpan(children: _textSpans.toList()));
    _body.add(formattedText);
    _textSpans.clear();
  }

  return Column(children: _body);
}
