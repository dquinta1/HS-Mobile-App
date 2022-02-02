part of 'app_bloc.dart';

enum AppStatus {
  authenticated,
  unauthenticated,
}

@freezed
class AppState with _$AppState {
  const factory AppState.unauthenticated({
    @Default(AppStatus.unauthenticated) AppStatus status,
    @Default(User.empty) User user,
  }) = Unauthenticated;
  const factory AppState.authenticated({
    @Default(AppStatus.authenticated) AppStatus status,
    required User user,
  }) = Authenticated;
}
