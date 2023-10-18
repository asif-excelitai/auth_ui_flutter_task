// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:image_cropper/image_cropper.dart';
// import 'dart:io';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomeScreen(),
//     );
//   }
// }
//
// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Picker and Cropper Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ElevatedButton(
//               onPressed: () {
//                 pickAndCropImage(ImageSource.gallery, 1, 6); // 1:6 aspect ratio
//               },
//               child: Text('Pick from Gallery (1:6)'),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 pickAndCropImage(ImageSource.camera, 1, 6); // 1:6 aspect ratio
//               },
//               child: Text('Take Photo (1:6)'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Future<void> pickAndCropImage(ImageSource source, double aspectRatioX, double aspectRatioY) async {
//     final picker = ImagePicker();
//     final pickedFile = await picker.pickImage(source: source);
//
//     if (pickedFile != null) {
//       File? croppedFile = await cropImage(pickedFile.path, aspectRatioX, aspectRatioY);
//
//       if (croppedFile != null) {
//         // Use the cropped image as needed
//         // You can save it, display it, or upload it to a server
//       }
//     }
//   }
//
//   Future<File?> cropImage(String imagePath, double aspectRatioX, double aspectRatioY) async {
//     File? croppedFile;
//     try {
//       croppedFile = await ImageCropper.cropImage(
//         sourcePath: imagePath,
//         aspectRatio: CropAspectRatio(ratioX: aspectRatioX, ratioY: aspectRatioY),
//         maxWidth: 800, // Adjust as needed
//         maxHeight: 800, // Adjust as needed
//       );
//     } catch (e) {
//       print("Error cropping image: $e");
//     }
//     return croppedFile;
//   }
// }