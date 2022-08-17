// All storage related exceptions in: 
// https://firebase.google.com/docs/reference/unity/class/firebase/storage/storage-exception#class_firebase_1_1_storage_1_1_storage_exception
// error.code defined here:
// https://github.com/firebase/flutterfire/blob/master/packages/firebase_storage/firebase_storage/ios/Classes/FLTFirebaseStoragePlugin.m
// Possible that we may just directly reference these "Firebase.Storage.StorageException", instead
// of having this ImageStorageFailure wrapper around it. 
class ImageStorageFailure implements Exception {
  const ImageStorageFailure([
    this.message = 'An unknown non-storage error has occurred.',
  ]);

  factory ImageStorageFailure.fromCode(String code) {
    switch (code) {
      case 'bucket-not-found':
        return const ImageStorageFailure(
          'The specified bucket could not be found on the server.',
        );
      case 'canceled':
        return const ImageStorageFailure(
          'The operation was canceled from the client.',
        );
      case 'invalid-checksum':
        return const ImageStorageFailure(
          'There was an error validating the operation due to a checksum failure.',
        );
      case 'not-authenticated':
        return const ImageStorageFailure(
          'The given signin credentials are not valid.',
        );
      case 'not-authorized':
        return const ImageStorageFailure(
          'The given signin credentials are not allowed to perform this operation.',
        );
      case 'object-not-found':
        return const ImageStorageFailure(
          'The specified object could not be found on the server.',
        );
      case 'project-not-found':
        return const ImageStorageFailure(
          'The specified project could not be found on the server.',
        );
      case 'quota-exceeded':
        return const ImageStorageFailure(
          'Free Tier quota has been exceeded.',
        );
      case 'retry-limit-exceeded':
        return const ImageStorageFailure(
          'The retry timeout was exceeded.',
        );
      case 'unknown':
        return const ImageStorageFailure(
          'An unknown storage error has occurred.',
        );
      default:
        return const ImageStorageFailure();
    }
  }

  /// The associated error message.
  final String message;
}
