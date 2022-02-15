import 'dart:io';


import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:path/path.dart' as path;
import 'package:storage_repository/storage_repository.dart';

class FirebaseStorageRepository implements IStorageRepository {
  FirebaseStorageRepository({
    firebase_storage.FirebaseStorage? firebaseStorage,
  }) : _firebaseStorage =
            firebaseStorage ?? firebase_storage.FirebaseStorage.instance;

  final firebase_storage.FirebaseStorage _firebaseStorage;

  @override
  Future<String> uploadImage({required File image}) async {
    final filePath = path.basename(image.path);

    try {
      await _firebaseStorage.ref('profile/$filePath').putFile(image);
      String url =
          await _firebaseStorage.ref('profile/$filePath').getDownloadURL();
      return url;
    } on FirebaseException catch (_) {
      throw UnimplementedError('Implement ImageStorageException');
    }
  }

  @override
  Future<String> getImageUrl({required String reference}) {
    // TODO: implement getImageUrl
    throw UnimplementedError();
  }

  @override
  Future<String> getImageReference({required String url}) {
    // TODO: implement getImageReference
    throw UnimplementedError();
  }

  @override
  Future<void> deleteImage({required String reference}) {
    // TODO: implement deleteImage
    throw UnimplementedError();
  }
}
