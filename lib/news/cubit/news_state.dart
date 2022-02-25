part of 'news_cubit.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState({
    @Default(false) bool loading,
    @Default(false) bool refreshing,
    @Default(false) bool fetchingMore,
    List<Blog>? blogs,
    Blog? blog,
    String? errorMessage,
  }) = _NewsState;
}
