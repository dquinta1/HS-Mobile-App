part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) bool isEditing,
    @Default(Email.pure()) Email? email,
    @Default(Password.pure()) Password? password,
    @Default(ConfirmedPassword.pure()) ConfirmedPassword? confirmedPassword,
    @Default(FormzStatus.pure) FormzStatus status,
    String? name,
    String? photo,
    String? errorMessage,
  }) = _ProfileState;
}
