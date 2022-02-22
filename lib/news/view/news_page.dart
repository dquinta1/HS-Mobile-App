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

class NewsView extends StatelessWidget {
  const NewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: BlocBuilder<NewsBloc, NewsState>(
        builder: (context, state) {
          return state.when(
            loading: () => const CircularProgressIndicator(),
            refreshing: () => const CircularProgressIndicator(),
            loadingPages: () => const CircularProgressIndicator(),
            blogs: (blogs) => NewsList(blogs: blogs),
            details: (blog) => NewsDetails(blog: blog),
            error: (error) => const Center(child: Text('Error')),
          );
        },
      ),
    );
  }
}
