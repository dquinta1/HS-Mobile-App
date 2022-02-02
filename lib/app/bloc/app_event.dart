part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.logoutRequested() = LogoutRequested;
  const factory AppEvent.userChanged({required User user}) = UserChanged;
}
