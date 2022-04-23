import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:storage_repository/storage_repository.dart';

class MockStorage implements IStorageRepository {
  @override
  Future<String> uploadImage({required File image}) {
    return Future.delayed(
        Duration(milliseconds: 100), () => 'https://picsum.photos/200');
  }

  @override
  Future<String> getImageUrl({required Reference reference}) {
    return Future.delayed(
        Duration(milliseconds: 100), () => 'https://picsum.photos/200');
  }

  @override
  Future<String> getFileUrlByPath({required String path}) async{
    return Future.delayed(
        Duration(milliseconds: 100), () => 'https://picsum.photos/200');
  }

  @override
  Future<Reference> getImageReference({required String url}) {
    return Future.delayed(Duration(milliseconds: 100));
  }

  @override
  Future<void> deleteImage({required Reference reference}) {
    return Future.delayed(Duration(milliseconds: 100));
  }
}
