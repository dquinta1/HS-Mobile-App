import 'package:bloc/bloc.dart';
import 'package:blogs_repository/blogs_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_state.dart';
part 'news_cubit.freezed.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit({required IBlogRepository blogRepository})
      : _blogRepository = blogRepository,
        super(const NewsState()) {
    fetchBlogs();
  }

  final IBlogRepository _blogRepository;

  Future<void> fetchBlogs() async {
    emit(state.copyWith(loading: true));
    try {
      final blogs = await _blogRepository.getBlogs();
      emit(state.copyWith(loading: false, blogs: blogs));
    } on BlogFailure catch (e) {
      emit(state.copyWith(errorMessage: e.message));
    } catch (e) {
      emit(state.copyWith(errorMessage: 'Unknown Error'));
    }
  }

  Future<void> refresh() async {
    emit(state.copyWith(refreshing: true));
    try {
      final blogs = await _blogRepository.getBlogs();
      emit(state.copyWith(refreshing: false, blogs: blogs));
    } on BlogFailure catch (e) {
      emit(state.copyWith(errorMessage: e.message));
    } catch (e) {
      emit(state.copyWith(errorMessage: 'Unknown Error'));
    }
  }

  Future<void> fetchMore(int index) async {
    emit(state.copyWith(fetchingMore: true));
    try {
      final blogs = await _blogRepository.getBlogs(fromBlog: index);
      emit(state.copyWith(
        fetchingMore: false,
        blogs: state.blogs == null ? blogs : state.blogs! + blogs,
      ));
    } on BlogFailure catch (e) {
      emit(state.copyWith(errorMessage: e.message));
    } catch (e) {
      emit(state.copyWith(errorMessage: 'Unknown Error'));
    }
  }

  Future<Blog?> seeDetails(String id) async {
    emit(state.copyWith(loading: true));
    try {
      final blog = await _blogRepository.getBlogById(id: id);
      emit(state.copyWith(loading: false));
      return blog;
    } on BlogFailure catch (e) {
      emit(state.copyWith(errorMessage: e.message));
      return null;
    } catch (e) {
      emit(state.copyWith(errorMessage: 'Unknown Error'));
      return null;
    }
  }
}
