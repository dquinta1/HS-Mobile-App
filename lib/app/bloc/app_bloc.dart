import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({required IAuthenticationRepository authenticationRepository})
      : _authenticationRepository = authenticationRepository,
        super(
          authenticationRepository.currentUser.isNotEmpty
              ? AppState.authenticated(
                  user: authenticationRepository.currentUser)
              : const AppState.unauthenticated(),
        ) {
    on<AppEvent>(_onEventDo);
    _userSubscription = _authenticationRepository.user.listen(
      (user) => add(AppEvent.userChanged(user: user)),
    );
  }

  final IAuthenticationRepository _authenticationRepository;
  late final StreamSubscription<User> _userSubscription;

  void _onEventDo(AppEvent event, Emitter<AppState> emit) {
    event.when(
      /// a change in the user's state, check if remains auth'd or not
      userChanged: (User user) {
        emit(user.isNotEmpty
            ? AppState.authenticated(user: user)
            : const AppState.unauthenticated());
      },

      /// user attempted to logout, visually sign out, let process run in bg
      logoutRequested: () => unawaited(_authenticationRepository.logOut()),
    );
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
