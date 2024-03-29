import 'dart:io';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:storage_repository/storage_repository.dart';

part 'sign_up_state.dart';
part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit({
    required IAuthenticationRepository authenticationRepository,
    required IStorageRepository storageRepository,
    required IImagePicker imagePicker,
  })  : _authenticationRepository = authenticationRepository,
        _storageRepository = storageRepository,
        _imagePicker = imagePicker,
        super(const SignUpState());

  final IAuthenticationRepository _authenticationRepository;
  final IStorageRepository _storageRepository;
  final IImagePicker _imagePicker;

  void nameChanged(String value) {
    final name = value;
    emit(state.copyWith(
      name: name,
    ));
  }

  void emailChanged(String value) {
    final email = Email.dirty(value);

    emit(state.copyWith(
        email: email,
        status: Formz.validate(
            [email, state.password!, state.confirmedPassword!])));
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    final confirmedPassword = ConfirmedPassword.dirty(
        password: password.value, value: state.confirmedPassword!.value);
    emit(state.copyWith(
        password: password,
        confirmedPassword: confirmedPassword,
        status: Formz.validate([
          state.email!,
          password,
          confirmedPassword,
        ])));
  }

  void confirmedPasswordChanged(String value) {
    final confirmedPassword = ConfirmedPassword.dirty(
      password: state.password!.value,
      value: value,
    );

    emit(state.copyWith(
        confirmedPassword: confirmedPassword,
        status: Formz.validate([
          state.email!,
          state.password!,
          confirmedPassword,
        ])));
  }

  /// handle photo upload logic
  Future<void> uploadAvatar(bool gallery) async {
    try {
      // emit(state.copyWith(status: FormzStatus.submissionInProgress));
      final _image = await _imagePicker.getImage(gallery);
      final _url = await _storageRepository.uploadImage(image: _image);
      emit(state.copyWith(
        photo: _url,
        status: state.status.isPure || state.status.isValidated
            ? FormzStatus.valid
            : state.status,
      ));
    } on FileSystemException catch (e) {
      emit(state.copyWith(
        errorMessage: e.message,
        status: FormzStatus.submissionFailure,
      ));
    } catch (_) {
      // throw e;
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }

  Future<void> signUpFormSubmitted() async {
    if (!state.status.isValidated) {
      // no change if form is not validated yet
      return;
    } else {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      try {
        await _authenticationRepository.signUp(
          email: state.email!.value,
          password: state.password!.value,
          name: state.name,
          photo: state.photo,
        );
        emit(state.copyWith(status: FormzStatus.submissionSuccess));
      } on SignUpWithEmailAndPasswordFailure catch (e) {
        emit(state.copyWith(
          errorMessage: e.message,
          status: FormzStatus.submissionFailure,
        ));
      } catch (_) {
        emit(state.copyWith(status: FormzStatus.submissionFailure));
      }
    }
  }
}
