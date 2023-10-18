import 'dart:io';

import 'package:ecshop/Screen/loginscreen.dart';
import 'package:ecshop/Screen/registration.dart';
import 'package:ecshop/programming/customeClippper.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Moreinfo extends StatefulWidget {
  const Moreinfo({super.key});

  @override
  State<Moreinfo> createState() => _MoreinfoState();
}

class _MoreinfoState extends State<Moreinfo> {
  bool ischeckd=false;
  final _passwordController=TextEditingController();
  final _repasswordController=TextEditingController();
  String selectedImagePath = '';
  String selectedbannerPath = '';
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffF3F3F3),
      body: Container(
        height: _height,
        width: _width,
        child: Stack(
          children: [
            Container(
              child: ClipPath(
                clipper: Traingle(),
                child: Container(
                  color: Color(0xffFEFEFE),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  "assets/logo/bppshop_banner.png",
                  height: 50,
                  width: 260,
                  fit: BoxFit.contain,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: _width,
                  height: _height * .8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: Text(
                          "Become A Seller",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Wellcome to Seller Registration",
                        style: TextStyle(fontSize: 15.0),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Divider(
                          color: Colors.black,
                          height: 1.0,
                          thickness: .5,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: _height * .1,
                                width: _width * .2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                 border: Border.all(
                                   color: Colors.blueAccent,
                                 ),
                                ),
                                child: selectedImagePath == ''
                                    ? Image.asset('assets/logo/gall.png', height: 130, width: 130, fit: BoxFit.fitHeight,)
                                    : Image.file(File(selectedImagePath), height: 130, width: 130, fit: BoxFit.cover,),

                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.blue,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        ),
                                      ),
                                      width: 90,
                                      height: 50,
                                      // color: Color(0xFBB0E0E),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 15.0, horizontal: 10.0),
                                        child: Text("Image Path: $selectedImagePath"),
                                        // Text(
                                        //   "Upload Shop Logo/Any Image",
                                        //   style: TextStyle(
                                        //     color: Colors.blueAccent,
                                        //     fontSize: 15.0,
                                        //   ),
                                        // ),
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    ElevatedButton(
                                    onPressed: () async {
                                     selectImage();
                                     setState(() {});
                                     },
                                        style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 20.0,
                                                horizontal: 65.0),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            primary: Colors.white12),
                                        child: Text(
                                          "browse",
                                          style: TextStyle(
                                              color: Colors.blueAccent),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            height: _height * .1,
                            width: _width,
                            //color: Colors.redAccent,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blueAccent,
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                )),),
                            // child: selectedbannerPath == ''
                            //     ? Image.asset('assets/logo/gall.png', height: 150, width: 150, fit: BoxFit.fill,)
                            //     : Image.file(File(selectedbannerPath), height: 200, width: 200, fit: BoxFit.fill,),
                          // ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 40,
                            width: _width,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blueAccent,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: Text(
                                "Upload banner/Signboard Picture",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.blueAccent),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Container(
                              alignment: Alignment.centerRight,
                              child: ElevatedButton(
                                  onPressed: () async {
                                    selectImage();
                                    setState(() {});
                                  },
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),primary: Colors.white12),
                                  child: Text(
                                    "browse",
                                    style: TextStyle(color: Colors.blueAccent),
                                  ))),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  color: Colors.white38,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      topLeft: Radius.circular(10)),
                                ),
                                width: _width * .04,
                                height: _height * .05,
                                // color: Color(0xFBB0E0E),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text(
                                    "Password",
                                    style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ),
                              )),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.blue,
                                    ),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                  ),
                                  height: _height * .05,
                                  width: _width * .6,
                                  child: TextFormField(
                                    controller: _passwordController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.blue,
                                    ),
                                    color: Colors.white38,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        topLeft: Radius.circular(10)),
                                  ),
                                  width: _width * .04,
                                  height: _height * .05,
                                  // color: Color(0xFBB0E0E),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Text(
                                      "Retype Password",
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ),
                                )),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.blue,
                                      ),
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                    ),
                                    height: _height * .05,
                                    width: _width * .6,
                                    child: TextFormField(
                                      controller: _repasswordController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                         SizedBox(
                           height: 10,
                         )
                         ,
                          Row(
                           // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                value: ischeckd,
                                onChanged: (bool? value) {
                                  setState(() {
                                    ischeckd = value!;
                                  });
                                },
                              ),
                              Text("I agree to Your terms",style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),),
                              TextButton(onPressed: (){}, child: Text("Terms and Condition",style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,

                              ),))
                            ],
                          ),
                          SizedBox(
                            height: 7.5,
                          ),
                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            ElevatedButton(onPressed: (){
                              Navigator.push(
                                  context,MaterialPageRoute(builder:(context)=>Registration()));
                            },style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    vertical: 17.0,
                                    horizontal: 50.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(10.0),
                                ),
                                primary: Colors.white12), child: Text("Back")),
                            ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    vertical: 17.0,
                                    horizontal: 50.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(10.0),
                                ),
                                primary: Colors.white12),child: Text("Submit")),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an Account?"),
                              TextButton(onPressed: (){
                                Navigator.push(
                                  context,MaterialPageRoute(builder:(context)=>Mylogin())
                                );
                              }, child: Text("Login",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent
                              ),))
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Future selectImage() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)), //this right here
            child: Container(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text(
                      'Select Image From !',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            selectedImagePath = await selectImageFromGallery();
                            print('Image_Path:-');
                            print(selectedImagePath);
                            if (selectedImagePath != '') {
                              Navigator.pop(context);
                              setState(() {});
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text("No Image Selected !"),
                              ));
                            }
                          },
                          child: Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                   Icon(Icons.browse_gallery),
                                    Text('Gallery'),
                                  ],
                                ),
                              )),
                        ),
                        GestureDetector(
                          onTap: () async {
                            selectedImagePath = await selectImageFromCamera();
                            print('Image_Path:-');
                            print(selectedImagePath);

                            if (selectedImagePath != '') {
                              Navigator.pop(context);
                              setState(() {});
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text("No Image Captured !"),
                              ));
                            }
                          },
                          child: Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                   Icon(Icons.camera),
                                    Text('Camera'),
                                  ],
                                ),
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  selectImageFromCamera() async {
    XFile? file = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 10);
    if (file != null) {
      return file.path;
    } else {
      return '';
    }
  }

  selectImageFromGallery() async {
    XFile? file = await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: 10);
    if (file != null) {
      return file.path;
    } else {
      return '';
    }
  }
}
