import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authenticationRepository) : super(const LoginState());

  final IAuthenticationRepository _authenticationRepository;

  void emailChanged(String value) {
    final email = Email.dirty(value);

    emit(state.copyWith(
      email: email,
      status: Formz.validate([email, state.password!]),
    ));
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);

    emit(state.copyWith(
      password: password,
      status: Formz.validate([state.email!, password]),
    ));
  }

  Future<void> logInWithCredentials() async {
    if (!state.status.isValidated) {
      return;
    } else {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      try {
        await _authenticationRepository.logInWithEmailAndPassword(
          email: state.email!.value,
          password: state.password!.value,
        );
        emit(state.copyWith(status: FormzStatus.submissionSuccess));
      } on LogInWithEmailAndPasswordFailure catch (e) {
        emit(state.copyWith(
          errorMessage: e.message,
          status: FormzStatus.submissionFailure,
        ));
      } catch (_) {
        emit(state.copyWith(status: FormzStatus.submissionFailure));
      }
    }
  }

  // ignore: todo
  //TODO: add third-party auth logic methods where
}
