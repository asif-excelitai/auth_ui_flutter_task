import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class ImagePickerWidget extends StatefulWidget {
  @override
  _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  File? _selectedImage;
  String? _imagePath;

  Future<void> _pickImage() async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 50, // Adjust image quality as needed
    );

    if (pickedFile == null) {
      return;
    }

    final imageFile = File(pickedFile.path);

    setState(() {
      _selectedImage = imageFile;
      _imagePath = basename(imageFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          if (_selectedImage != null)
            Container(
              width: 200,
              height: 200,
              child: Image.file(
                _selectedImage!,
                fit: BoxFit.cover,
              ),
            ),
          ElevatedButton(
            onPressed: _pickImage,
            child: Text("Pick an Image"),
          ),
          if (_imagePath != null)
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Image Path: $_imagePath"),
            ),
        ],
      ),
    );
  }
}