import 'package:authentication_repository/authentication_repository.dart';

/// {@template i_authentication_repository}
/// Authentication Interface which manages user authentication.
/// {@endtemplate}
abstract class IAuthenticationRepository {
  /// Stream of [User] which will emit the current user when
  /// the authentication state changes.
  ///
  /// Emits [User.empty] if the user is not authenticated.
  Stream<User> get user;

  /// Returns the current cached user.
  /// Defaults to [User.empty] if there is no cached user.
  User get currentUser;

  /// Creates a new user with the provided [email] and [password].
  /// Will update user's display name if provided with [name]
  /// and user's photo uri if provided with [photo]
  /// 
  /// Throws a [Exception] if an exception occurs.
  Future<void> signUp({
    required String email,
    required String password,
    String? name,
    String? photo,
  });

  /// Signs in with the provided [email] and [password].
  ///
  /// Throws a [Exception] if an exception occurs.
  Future<void> logInWithEmailAndPassword(
      {required String email, required String password});

  /// Signs out the current user which will emit
  /// [User.empty] from the [user] Stream.
  ///
  /// Throws a [Exception] if an exception occurs.
  Future<void> logOut();

  /// Updates user's profile 
  /// 
  /// Throws a [Exception] if an exception occurs.
  Future<void> updateUserProfile({
    String? email,
    String? password,
    String? name,
    String? photo,
  });
}
