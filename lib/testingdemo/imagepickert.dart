// import 'dart:io';
// import 'package:path/path.dart' as path;
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
//
// class Imagepickert extends StatefulWidget {
//   const Imagepickert({super.key});
//   @override
//   State<Imagepickert> createState() => _ImagepickertState();
// }
//
// class _ImagepickertState extends State<Imagepickert> {
//   File? _imageFile; // Holds the selected image
//   String? _imageName;
//   // Function to open the camera and capture an image
//   Future<void> _pickImageFromCamera() async {
//     final imagePicker = ImagePicker();
//     final pickedImage = await imagePicker.pickImage(source: ImageSource.camera);
//
//     if (pickedImage != null) {
//       final imageFileName = path.basename(pickedImage.path);
//       setState(() {
//         _imageFile = File(pickedImage.path);
//         _imageName =imageFileName;
//       });
//     }
//   }
//
//   // Function to open the gallery and select an image
//   Future<void> _pickImageFromGallery() async {
//     final imagePicker = ImagePicker();
//     final pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);
//
//     if (pickedImage != null) {
//       final imageFileName = path.basename(pickedImage.path);
//       setState(() {
//         _imageFile = File(pickedImage.path);
//         _imageName = imageFileName;
//       });
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     final _height = MediaQuery.of(context).size.height;
//     final _weidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//         body: SafeArea(
//       child: Column(
//         children: [
//           const SizedBox(height: 50),
//           Container(
//             color: Color(0xffFFFFFed),
//             width: _weidth,
//             height: _height * .8,
//             child: Row(
//               // mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 AspectRatio(aspectRatio: 1.1,
//                 child: _imageFile!=null
//                   ? Image.file(_imageFile!):Container(
//                   margin: EdgeInsets.symmetric(horizontal: _weidth/35,vertical: _height/40),
//                   width: _weidth/3,
//                   height: _height/7,
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: Colors.blueAccent,
//                       width: 5,
//                     ),
//                     borderRadius: BorderRadius.all(Radius.circular(20)),
//
//                   ),
//                 ),),
//
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Container(
//                       margin: EdgeInsets.symmetric(vertical: _height / 40),
//                       height: _height / 11,
//                       width: _weidth / 1.8,
//                       decoration: BoxDecoration(
//                           border:
//                               Border.all(width: 4, color: Colors.blueAccent),
//                           borderRadius: BorderRadius.all(Radius.circular(20))),
//
//                     child: Text('$_imageName'),
//                     ),
//                     ElevatedButton(onPressed: _pickImageFromGallery, child: Text("Select"
//                     ))
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     ));
//   }
//
// }
//
