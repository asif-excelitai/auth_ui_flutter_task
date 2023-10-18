// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
//
// class MyImagePicker extends StatefulWidget {
//   @override
//   _MyImagePickerState createState() => _MyImagePickerState();
// }
//
// class _MyImagePickerState extends State<MyImagePicker> {
//   File? _imageFile;
//
//   Future<void> _pickImage(ImageSource source) async {
//     final pickedFile = await ImagePicker().pickImage(source: source);
//
//     if (pickedFile != null) {
//       final File pickedImage = File(pickedFile.path);
//
//       // Check if the image has a 1:1 aspect ratio (square)
//       final imageBytes = await pickedImage.readAsBytes();
//       final decodedImage = await decodeImageFromList(imageBytes);
//
//       if (decodedImage.width == decodedImage.height) {
//         setState(() {
//           _imageFile = pickedImage;
//         });
//       } else {
//         // Show an error message or handle non-square images
//         showDialog(
//           context: context,
//           builder: (context) {
//             return AlertDialog(
//               title: Text('Invalid Image Aspect Ratio'),
//               content: Text('Please select an image with a 1:1 aspect ratio (square).'),
//               actions: [
//                 TextButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: Text('OK'),
//                 ),
//               ],
//             );
//           },
//         );
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         AspectRatio(
//           aspectRatio: 1.0, // 1:1 aspect ratio
//           child: InkWell(
//             onTap: () {
//               _pickImage(ImageSource.gallery); // Open image picker
//             },
//             child: _imageFile == null
//                 ? Container(
//               color: Colors.grey[200],
//               child: Icon(
//                 Icons.camera_alt,
//                 size: 48.0,
//                 color: Colors.grey,
//               ),
//             )
//                 : Image.file(_imageFile!, fit: BoxFit.cover),
//           ),
//         ),
//         SizedBox(height: 16.0),
//         Text(
//           'Tap to select a 1:1 aspect ratio image',
//           style: TextStyle(fontSize: 16.0),
//         ),
//         Container(
//           child: TextField(
//           ),
//         )
//       ],
//     );
//   }
// }