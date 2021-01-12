// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';
//
// class ImagePicker extends StatefulWidget {
//   @override
//   _ImagePickerState createState() => _ImagePickerState();
// }
//
// class _ImagePickerState extends State<ImagePicker> {
//   File _image;
//   final picker = ImagePicker();
//
//   Future getImage() async {
//     final pickedFile = await picker.getImage(source: ImageSource.camera);
//
//     setState(() {
//       if (pickedFile != null) {
//         _image = File(pickedFile.path);
//       } else {
//         print('No image selected.');
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ImagePicker'),
//         centerTitle: true,
//       ),
//     );
//   }
// }
//
// // @override
// // void initState() {
// //   _iconData = [
// //     {
// //       "icon" : Icon(Icons.camera_alt),
// //       "onClick" : _cameraOn
// //     },
// //     {
// //       "icon" : Icon(Icons.camera),
// //       "onClick" : _galleryOn
// //     }
// //   ];
// //   super.initState();
// // }
