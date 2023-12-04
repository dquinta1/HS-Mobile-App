import 'dart:io';

import 'package:image_picker/image_picker.dart';

/// Selects an image from the gallery when [gallery] is true
/// or prompts the user to use the camera if [gallery] is false
///
/// Returns a [File] with the selected image's path
Future<File> pickImage(bool gallery) async {
  ImagePicker picker = ImagePicker();
  XFile? pickedFile;

  if (gallery) {
    pickedFile = await picker.pickImage(source: ImageSource.gallery);
  } else {
    pickedFile = await picker.pickImage(source: ImageSource.camera);
  }

  if (pickedFile != null) {
    return File(pickedFile.path);
  }
  throw FileSystemException('No image selected');
}
