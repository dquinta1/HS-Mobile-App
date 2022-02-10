import 'package:data_repository/src/models/models.dart';

/// {@template i_data_repository}
/// Storage Interface which manages user CRUD operations.
/// {@endtemplate}
abstract class IDataRepository {
  /// Returns the user's profile data.
  Future<UserProfile> get profile;

  /// Creates a profile for a newly signed-up user with the provided [uid]
  ///
  /// Throws a [Exception] if an error occurs.
  Future<void> createProfile({required String uid});

  /// Updates the profile fields where current != previous
  ///
  /// Throws a [Exception] if an error occurs.
  Future<void> updateProfile({required UserProfile profile});

  /// Deletes the profile linked to the specified [uid]
  ///
  /// Throws a [Exception] if an error occurs.
  Future<void> deleteProfile({required String uid});
}
