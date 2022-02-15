import 'dart:io';

import 'package:storage_repository/storage_repository.dart';

class MockStorage implements IStorageRepository {
  @override
  Future<void> deleteImage({required String reference}) {
    // TODO: implement deleteImage
    throw UnimplementedError();
  }

  @override
  Future<String> getImageReference({required String url}) {
    // TODO: implement getImageReference
    throw UnimplementedError();
  }

  @override
  Future<String> getImageUrl({required String reference}) {
    // TODO: implement getImageUrl
    throw UnimplementedError();
  }

  @override
  Future<String> uploadImage({required File image}) {
    // TODO: implement uploadImage
    throw UnimplementedError();
  }

}