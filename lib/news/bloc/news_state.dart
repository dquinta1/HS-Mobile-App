part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.loading() = Loading;
  const factory NewsState.blogs({
    @Default(false) bool refreshing,
    @Default(false) bool fetchingMore,
    required List<Blog>? blogs,
  }) = Blogs;
  const factory NewsState.details({required Blog? blog}) = Details;
  const factory NewsState.error({required BlogFailure? e}) = ErrorState;
}
