import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:blogs_repository/blogs_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_event.dart';
part 'news_state.dart';
part 'news_bloc.freezed.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc({required IBlogRepository blogRepository})
      : _blogRepository = blogRepository,
        super(const NewsState.loading()) {
    on<Fetch>(_onFetch);
    on<Refresh>(_onRefresh);
    on<FetchMore>(_onFetchMore);
    on<SeeDetails>(_onSeeDetails);
  }

  final IBlogRepository _blogRepository;

  Future<void> _onFetch(Fetch event, Emitter<NewsState> emit) {
    throw UnimplementedError();
  }

  Future<void> _onRefresh(Refresh event, Emitter<NewsState> emit) {
    throw UnimplementedError();
  }

  Future<void> _onFetchMore(FetchMore event, Emitter<NewsState> emit) {
    throw UnimplementedError();
  }

  Future<void> _onSeeDetails(SeeDetails event, Emitter<NewsState> emit) {
    throw UnimplementedError();
  }
}
