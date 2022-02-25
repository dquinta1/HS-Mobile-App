import 'package:blogs_repository/blogs_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hs_mobile_app/news/news.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewsBloc>(
      create: (_) => NewsBloc(blogRepository: context.read<IBlogRepository>()),
      child: const NewsView(),
    );
  }
}
