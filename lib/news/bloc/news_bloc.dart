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
    add(const Fetch());
  }

  final IBlogRepository _blogRepository;

  Future<void> _onFetch(Fetch event, Emitter<NewsState> emit) async {
    emit(const Loading());
    try {
      final blogs = await _blogRepository.getBlogs();
      emit(Blogs(blogs: blogs));
    } on BlogFailure catch (e) {
      emit(ErrorState(e: e));
    } catch (e) {
      emit(const ErrorState(e: BlogFailure()));
    }
  }

  Future<void> _onRefresh(Refresh event, Emitter<NewsState> emit) async {
    emit(state.maybeMap(
      blogs: (state) => state.copyWith(refreshing: true),
      orElse: () => state,
    ));
    try {
      final blogs = await _blogRepository.getBlogs();
      emit(Blogs(blogs: blogs));
    } on BlogFailure catch (e) {
      emit(ErrorState(e: e));
    } catch (e) {
      emit(const ErrorState(e: BlogFailure()));
    }
  }

  Future<void> _onFetchMore(FetchMore event, Emitter<NewsState> emit) async {
    emit(state.maybeMap(
      blogs: (state) => state.copyWith(fetchingMore: true),
      orElse: () => state,
    ));
    try {
      final blogs = await _blogRepository.getBlogs(fromBlog: event.index);
      emit(state.maybeMap(
        blogs: (state) =>
            Blogs(blogs: state.blogs == null ? blogs : state.blogs! + blogs),
        orElse: () => state,
      ));
    } on BlogFailure catch (e) {
      emit(ErrorState(e: e));
    } catch (e) {
      emit(const ErrorState(e: BlogFailure()));
    }
  }

  Future<void> _onSeeDetails(SeeDetails event, Emitter<NewsState> emit) async {
    emit(const Loading());
    try {
      final blog = await _blogRepository.getBlogById(id: event.id);
      emit(Details(blog: blog));
    } on BlogFailure catch (e) {
      emit(ErrorState(e: e));
    } catch (e) {
      emit(const ErrorState(e: BlogFailure()));
    }
  }
}
