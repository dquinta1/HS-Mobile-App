part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.loading() = Loading;
  const factory NewsState.refreshing() = Refreshing;
  const factory NewsState.loadingPages() = LoadingPages;
  const factory NewsState.blogs({required List<Blog>? blogs}) = Blogs;
  const factory NewsState.details({required Blog? blog}) = Details;
  const factory NewsState.error({required Error? error}) = ErrorState;
}
