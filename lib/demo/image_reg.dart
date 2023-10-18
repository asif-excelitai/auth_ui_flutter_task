import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class Image_registration extends StatefulWidget {
  const Image_registration({super.key});

  @override
  State<Image_registration> createState() => _Image_registrationState();
}

class _Image_registrationState extends State<Image_registration> {
  File? _imageFile;

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) {
      final File pickedImage = File(pickedFile.path);

      // Check if the image has a 1:1 aspect ratio (square)
      final imageBytes = await pickedImage.readAsBytes();
      final decodedImage = await decodeImageFromList(imageBytes);

      if (decodedImage.width == decodedImage.height) {
        setState(() {
          _imageFile = pickedImage;
        });
      } else {
        // Show an error message or handle non-square images
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Invalid Image Aspect Ratio'),
              content: Text('Please select an image with a 1:1 aspect ratio (square).'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
    body: Container(
       height: _height,
      width: _width,
      color: Colors.lightBlueAccent,
      child: Center(
        child: Container(
          width:_width /3,
          height: _height/7,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            border: Border.all(
              width: 3,
              color: Colors.blueGrey
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),backgroundColor: Colors.white10
              ) ,child: Icon(Icons.camera)),
              ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),backgroundColor: Colors.white10
              ) ,child: Icon(Icons.browse_gallery)),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
