import 'dart:io'; 
import 'package:storage_repository/storage_repository.dart';

// Interface to interact with gallary; also provide convenience for testing purposes.
abstract class IImagePicker {
  Future<File> getImage(bool fromGallary);
}

// A concrete class for the IImagePicker interface.
// Extract out the getImage() utility function into an image picker interface. 
class ImagePicker implements IImagePicker {
  Future<File> getImage(bool fromGallary) {
    return pickImage(fromGallary);
  }
}
