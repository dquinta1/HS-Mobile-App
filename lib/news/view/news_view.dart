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
  Widget _child = const Center(child: CircularProgressIndicator());

  @override
  Widget build(BuildContext newsContext) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(2),
        child: BlocListener<NewsCubit, NewsState>(
          listener: (context, state) {
            //? state.refreshing here is just for testing purposes
            // TODO: remove the OR state.refreshing clause 
            if (state.loading || state.refreshing ) {
              setState(() {
                _child = const Center(child: CircularProgressIndicator());
              });
            } else if (state.errorMessage != null) {
              setState(() {
                _child = Center(child: Text(state.errorMessage!));
              });
            } else if (state.blogs == null) {
              setState(() {
                _child = const Center(
                  child: Text('No Blogs to Show'),
                );
              });
            } else {
              setState(() {
                _child = ListView.builder(
                    itemCount: state.blogs!.length,
                    itemBuilder: (context, index) {
                      return _BlogCard(
                        title: state.blogs![index].title,
                        author: state.blogs![index].author,
                        photo: state.blogs![index].photo,
                        date: state.blogs![index].date,
                        onClick: () async {
                          final blog = await context
                              .read<NewsCubit>()
                              .seeDetails(state.blogs![index].id);
                          if (blog != null) {
                            // ignore: unawaited_futures, use_build_context_synchronously
                            Navigator.of(newsContext)
                                .push<void>(NewsDetails.route(blog));
                          }
                        },
                      );
                    },
                  );
              });
            }
          },
          child: _child,
        ),
      ),
      //? this FAB is just for testing purposes, refresh functionality is 
      //? governed by the scrollController
      //TODO: remove this FAB
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<NewsCubit>().refresh(),
        child: const Icon(Icons.refresh),
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
            if (_photo == null)
              //? replace line below with a fixed image placeholder
              Image.network('https://picsum.photos/800')
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
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      _title,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      softWrap: false,
                      style: const TextStyle(fontSize: 22),
                    ),
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
                    DateFormat.yMMMd().format(_date),
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
