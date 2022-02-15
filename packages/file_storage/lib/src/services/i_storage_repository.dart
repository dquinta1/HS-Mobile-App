import 'dart:io';

/// {@template i_storage_repository}
/// File Storage Interface which manages file CRUD operations.
/// {@endtemplate}
abstract class IStorageRepository {
  /// Attempts to upload provided [image] file into storage
  /// On success returns [String] containing the url of the uploaded image
  ///
  /// Throws [Exception] if an exception occurs
  Future<String> uploadImage({required File image});

  /// Attempts to get url of an uploaded image in the path of [reference]
  /// Returns [String] url of the uploaded image
  ///
  /// Throws [Exception] if an exception occurs
  Future<String> getImageUrl({required String reference});

  /// Attempts to get reference to an image provided its [url]
  ///
  /// Throws [Exception] if an exception occurs
  Future<String> getImageReference({required String url});

  /// Attempts to delete an uploaded image at [reference]
  ///
  /// Throws [Exception] if an exception occurs
  Future<void> deleteImage({required String reference});
}
