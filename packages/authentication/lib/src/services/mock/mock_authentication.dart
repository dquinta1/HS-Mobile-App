import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';

class MockAuthentication implements IAuthenticationRepository {
  MockAuthentication() : _controller = StreamController<User>.broadcast() {
    _controller
        .add(User(id: 'test', email: 'test@test.com', name: 'Test User'));
  }

  final StreamController<User> _controller;

  @override
  User get currentUser {
    return User(id: 'test', email: 'test@test.com', name: 'Test User');
  }

  @override
  Future<void> logInWithEmailAndPassword(
      {required String email, required String password}) {
    if ((email == 'test@test.com' && password == 'test1234')) {
      _controller.add(User(id: 'test', email: email, name: 'Test User'));
      return Future.delayed(Duration(seconds: 1));
    } else {
      return Future.error(LogInWithEmailAndPasswordFailure);
    }
  }

  @override
  Future<void> logOut() {
    _controller.add(User.empty);
    return Future.delayed(Duration(seconds: 1));
  }

  @override
  Future<void> signUp({
    required String email,
    required String password,
    String? name,
    String? photo,
  }) {
    if ((email == 'test@test.com' && password == 'test1234')) {
      return Future.error(
          SignUpWithEmailAndPasswordFailure.fromCode('email-already-in-use'));
    } else {
      _controller.add(User(id: 'test', email: email, name: 'Test User'));
      return Future.delayed(Duration(seconds: 1));
    }
  }

  @override
  Stream<User> get user {
    return _controller.stream;
  }

  @override
  Future<void> updateUserProfile({
    String? email,
    String? password,
    String? name,
    String? photo,
  }) {
    if (name == 'break it') {
      return Future.error(UpdateProfileFailure);
    } else {
      return Future.delayed(Duration(milliseconds: 200));
    }
  }
}
