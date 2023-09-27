
import 'dart:math';

import 'package:ecshop/Screen/registration.dart';
import 'package:ecshop/programming/customeClippper.dart';
import 'package:flutter/material.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({super.key});

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  bool ischeckd = false;
  TextEditingController _pnController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
            height: _height,
            width: _width,
            color: Color(0xFFF3F3F3),
            child: Stack(
              children: [
                Container(
                  child: ClipPath(
                    clipper: Traingle(),
                    child: Container(
                      // color: Color(0xE5D9D9),
                      color: Colors.redAccent,
                    ),
                  ),
                ),
                Positioned(
                    top: 90,
                    left: 10,
                    right: 10,
                    child: Column(
                      children: [
                        Container(
                          //padding: EdgeInsets.symmetric(vertic),
                          child: const Text(
                            "BPP SHOP",
                            style: (TextStyle(
                                color: Colors.white12, fontSize: 50.0)),
                          ),
                        ),
                        Container(
                          //padding: EdgeInsets.only(left: 10,right: 10),
                          width: _width,
                          height: _height * .7,
                          color: Colors.white24,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 10),
                                  child: Text(
                                    "Sign in",
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
                                  "Wellcome to Seller login",
                                  style: TextStyle(fontSize: 15.0),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 8.0, right: 8.0),
                                  child: Divider(
                                    color: Colors.black,
                                    height: 1.0,
                                    thickness: .4,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        "Mobile",
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    TextFormField(
                                      controller: _pnController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Enter mobile Number",
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        "Password",
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    TextFormField(
                                      obscureText: true,
                                      controller: _passController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Password",
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
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
                                        Text(
                                          "Remember me ",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 109.0),
                                          child: TextButton(
                                              onPressed: () {
                                                showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return Container(
                                                        child: AlertDialog(
                                                            title: Text(
                                                                "Enter Phone number"),
                                                            actions: [
                                                              TextButton(
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.pop(
                                                                        context);
                                                                  },
                                                                  child: Text(
                                                                      "ok"))
                                                            ]),
                                                      );
                                                    });
                                              },
                                              child: Text(
                                                "Forgot password ?",
                                                style: TextStyle(
                                                  color: Colors.blueAccent,
                                                ),
                                              )),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 45,
                                  width: _width,
                                  child: ElevatedButton(
                                      onPressed: () {}, child: Text("Sign in")),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Become a seller"),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Registration()),
                                          );
                                        },
                                        child: Text(
                                          "Signup",
                                          style: TextStyle(
                                              color: Colors.blueAccent,
                                              decoration:
                                                  TextDecoration.underline),
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            )),
      ),
    );
  }
}

// Future openDialog() => showDialog(
//     context: context,
//     builder: (context) => AlertDialog(
//     title: Text("Enter phone number"),
// ));
// class _Traingle extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     path.moveTo(size.width * 0.4, -size.height * 0.2);
//     path.lineTo(0, size.height);
//     path.lineTo(size.width + 40, size.height * 0.3);
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(covariant CustomClipper<dynamic> oldClipper) => true;
// }
