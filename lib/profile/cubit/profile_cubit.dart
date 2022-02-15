import 'dart:async';
import 'dart:io';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hs_mobile_app/app/app.dart';
import 'package:storage_repository/storage_repository.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit({
    required AppBloc bloc,
    required IAuthenticationRepository authenticationRepository,
    required IStorageRepository storageRepository,
  })  : _bloc = bloc,
        _authenticationRepository = authenticationRepository,
        _storageRepository = storageRepository,
        super(const ProfileState()) {
    emit(ProfileState(
      isEditing: false,
      name: _bloc.state.user.name,
      email: Email.dirty(_bloc.state.user.email!),
      photo: _bloc.state.user.photo,
    ));

    _appBlocSubscription = _bloc.stream.listen((state) {
      emit(ProfileState(
        isEditing: false,
        name: state.user.name,
        email: Email.dirty(state.user.email!),
        photo: state.user.photo,
      ));
    });
  }

  final AppBloc _bloc;
  final IAuthenticationRepository _authenticationRepository;
  final IStorageRepository _storageRepository;
  late final StreamSubscription<AppState> _appBlocSubscription;

  /// Handles switching between Static profile view and Editing profile view
  void editing(bool isEditing) {
    if (isEditing) {
      emit(const ProfileState(isEditing: true));
    } else {
      emit(ProfileState(
        isEditing: false,
        name: _bloc.state.user.name,
        email: Email.dirty(_bloc.state.user.email!),
        photo: _bloc.state.user.photo,
      ));
    }
  }

  /// form validation on [name]
  void nameChanged(String name) {
    emit(state.copyWith(
      name: name,
      status: state.status.isPure || state.status.isValidated
          ? FormzStatus.valid
          : state.status,
    ));
  }

  /// form validation on email
  void emailChanged(String value) {
    final email = Email.dirty(value);
    emit(state.copyWith(email: email, status: Formz.validate([email])));
  }

  /// form validation on password
  void passwordChanged(String value) {
    final password = Password.dirty(value);
    final confirmedPassword = ConfirmedPassword.dirty(
        password: password.value, value: state.confirmedPassword!.value);
    emit(state.copyWith(
        password: password,
        confirmedPassword: confirmedPassword,
        status: Formz.validate([
          password,
          confirmedPassword,
        ])));
  }

  /// form validation on confirmedPassword
  void confirmedPasswordChanged(String value) {
    final confirmedPassword = ConfirmedPassword.dirty(
      password: state.password!.value,
      value: value,
    );
    emit(state.copyWith(
        confirmedPassword: confirmedPassword,
        status: Formz.validate([
          state.password!,
          confirmedPassword,
        ])));
  }

  /// handle photo upload logic
  Future<void> uploadAvatar(bool gallery) async {
    try {
      // emit(state.copyWith(status: FormzStatus.submissionInProgress));
      final _image = await getImage(gallery);
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

  /// handles form submission and attempts to execute updateProfile
  /// using the authentication repository provided
  Future<void> editProfileFormSubmitted() async {
    if (!state.status.isValidated) {
      // do nothing if form is not validated
      return;
    } else {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      try {
        await _authenticationRepository.updateUserProfile(
          name: state.name,
          email: state.email!.value == '' ? null : state.email!.value,
          password: state.password!.value == '' ? null : state.password!.value,
          photo: state.photo,
        );
        emit(state.copyWith(status: FormzStatus.submissionSuccess));
      } on UpdateProfileFailure catch (e) {
        emit(state.copyWith(
          errorMessage: e.message,
          status: FormzStatus.submissionFailure,
        ));
      } catch (_) {
        emit(state.copyWith(status: FormzStatus.submissionFailure));
      }
    }
  }

  @override
  Future<void> close() {
    _appBlocSubscription.cancel();
    return super.close();
  }
}
