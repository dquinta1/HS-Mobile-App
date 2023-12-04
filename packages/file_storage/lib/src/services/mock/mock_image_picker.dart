import 'dart:io';
import 'package:storage_repository/storage_repository.dart';

// This is a mock that implements the dummy getImage() call. 
class MockImagePicker implements IImagePicker {
  MockImagePicker(File mockFile)  : _mockFile = mockFile;

  File _mockFile;

  @override
  Future<File> getImage(bool fromGallary) {
    return Future.delayed(
        Duration(milliseconds: 100), () => _mockFile);
  }

  void setMockFile(File newFile) {
    _mockFile = newFile;
  }
}
