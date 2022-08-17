import 'dart:developer' as developer;
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as path;
import 'package:storage_repository/storage_repository.dart';

class FirebaseStorage implements IStorageRepository {
  FirebaseStorage({
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
    } on FirebaseException catch (e) {
      throw ImageStorageFailure.fromCode(e.code);
    } catch (_) {
      throw const ImageStorageFailure();
    }
  }

  @override
  Future<String> getImageUrl({required Reference reference}) async {
    try {
      final _url = await reference.getDownloadURL();
      return _url;
    } on FirebaseException catch (e) {
      throw ImageStorageFailure.fromCode(e.code);
    } catch (_) {
      throw const ImageStorageFailure();
    }
  }

  @override
  Future<String> getFileUrlByPath({required String path}) async {
    try {
      final _url = await _firebaseStorage.ref(path).getDownloadURL();
      return _url;
    } on FirebaseException catch (e) {
      throw ImageStorageFailure.fromCode(e.code);
    } catch (_) {
      throw const ImageStorageFailure();
    }
  }

  @override
  Future<Reference> getImageReference({required String url}) async {
    try {
      final _ref = await _firebaseStorage.refFromURL(url);
      return _ref;
    } on FirebaseException catch (e) {
      throw ImageStorageFailure.fromCode(e.code);
    } catch (_) {
      throw const ImageStorageFailure();
    }
  }

  @override
  Future<void> deleteImage({required Reference reference}) async {
    try {
      await reference.delete();
    } on FirebaseException catch (e) {
      throw ImageStorageFailure.fromCode(e.code);
    } catch (_) {
      throw const ImageStorageFailure();
    }
  }
}
