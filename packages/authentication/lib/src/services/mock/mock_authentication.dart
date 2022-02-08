import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';

class MockAuthentication implements IAuthenticationRepository {
  MockAuthentication() : _controller = StreamController<User>.broadcast() {
    _controller
        .add(User(id: 'test', email: 'test@test.com', name: 'Test User'));
  }

  final StreamController<User> _controller;

  User get currentUser {
    return User(id: 'test', email: 'test@test.com', name: 'Test User');
  }

  Future<void> logInWithEmailAndPassword(
      {required String email, required String password}) {
    if ((email == 'test@test.com' && password == 'test1234')) {
      _controller.add(User(id: 'test', email: email, name: 'Test User'));
      return Future.delayed(Duration(seconds: 1));
    } else {
      return Future.error(LogInWithEmailAndPasswordFailure);
    }
  }

  Future<void> logOut() {
    _controller.add(User.empty);
    return Future.delayed(Duration(seconds: 1));
  }

  Future<void> signUp({required String email, required String password}) {
    if ((email == 'test@test.com' && password == 'test1234')) {
      return Future.error(
          SignUpWithEmailAndPasswordFailure.fromCode('email-already-in-use'));
    } else {
      _controller.add(User(id: 'test', email: email, name: 'Test User'));
      return Future.delayed(Duration(seconds: 1));
    }
  }

  Stream<User> get user {
    return _controller.stream;
  }
}
