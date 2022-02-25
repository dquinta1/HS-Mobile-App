import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hs_mobile_app/news/news.dart';
import 'package:intl/intl.dart';

class NewsView extends StatefulWidget {
  const NewsView({
    Key? key,
  }) : super(key: key);

  //TODO: initialize scrollController
  //TODO: implement refresh on swipe down
  //TODO: implement fetch next page full scroll

  @override
  _NewsViewState createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: BlocBuilder<NewsBloc, NewsState>(
        builder: (context, state) {
          return state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            details: (blog) => NewsDetails(blog: blog),
            error: (error) => const Center(child: Text('Error')),
            blogs: (refreshing, fetchingMore, blogs) {
              return blogs == null
                  ? const Text('Empty List')
                  : ListView.builder(
                      itemCount: blogs.length,
                      itemBuilder: (context, index) {
                        return _BlogCard(
                          title: blogs[index].title,
                          author: blogs[index].author,
                          photo: blogs[index].photo,
                          date: blogs[index].date,
                          onClick: () {
                            context
                                .read<NewsBloc>()
                                .add(SeeDetails(blogs[index].id));
                            Navigator.of(context).push<void>(MaterialPageRoute(
                                builder: (context) => NewsDetails(
                                      blog: blogs[index],
                                    )));
                          },
                        );
                      },
                    );
            },
          );
        },
      ),
    );
  }
}

class _BlogCard extends StatelessWidget {
  const _BlogCard(
      {Key? key,
      required void Function() onClick,
      required String title,
      required DateTime date,
      String? author,
      String? photo})
      : _onClick = onClick,
        _title = title,
        _author = author,
        _photo = photo,
        _date = date,
        super(key: key);

  final void Function() _onClick;
  final String _title;
  final String? _author;
  final String? _photo;
  final DateTime _date;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.grey.shade300,
      onTap: _onClick,
      child: Card(
        child: Column(
          children: [
            Image(
              image: _photo == null
                  //? replace line below with a fixed image placeholder
                  ? const NetworkImage('https://picsum.photos/800')
                  //TODO: dynamically show 'loading' while image is being fetched
                  : NetworkImage(_photo!),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Text(
                    _title,
                    textAlign: TextAlign.start,
                    style: const TextStyle(fontSize: 22),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 4),
              child: Row(
                children: [
                  Text(
                    _author ?? 'Anonymous',
                    textAlign: TextAlign.start,
                    style: const TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  Expanded(child: Container()),
                  Text(
                    DateFormat.yMMM().format(_date),
                    textAlign: TextAlign.end,
                    style: const TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
