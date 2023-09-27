import 'package:ecshop/Screen/moreregistration.dart';
import 'package:flutter/material.dart';

import '../programming/customeClippper.dart';
class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController _pnController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffF3F3F3),
      body: Container(
          height: _height,
          width: _width,
          // color: Color(0xFF3F3F3),
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
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 50,),
                    Image.asset('assets/logo/bppshop_banner.png',height: 50,width: 260,fit: BoxFit.contain,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: _width,
                      height: _height * .8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFFFFFFF),
                      ),
                      // color: Colors.blueAccent,
                      child: Column(
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.only(top: 10, left: 10),
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
                            padding:
                            EdgeInsets.only(left: 8.0, right: 8.0),
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
                            crossAxisAlignment:
                            CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Seller info",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 2.0,right: 2.0),
                                child: Row(
                                  children: [
                                   Expanded(
                                       child: Container(
                                     decoration: BoxDecoration(
                                       border:Border.all(
                                         color: Colors.blue,
                                       ),
                                       color: Colors.white38,
                                       borderRadius: BorderRadius.only(
                                           bottomLeft: Radius.circular(10),
                                           topLeft: Radius.circular(10)),

                                     ),
                                     width: _width * .02,
                                     height: _height * .05,
                                    // color: Color(0xFBB0E0E),
                                     child: Padding(
                                       padding: const EdgeInsets.all(8),
                                       child: Text("First Name",
                                         style:TextStyle(
                                           color: Colors.brown,
                                           fontSize: 15.0,
                                         ),),
                                     ),
                                   )),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: Container(
                                        height: _height*.05,
                                        width:_width*.6,
                                        child: TextFormField(
                                          controller: _pnController,
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
                              Padding(
                                padding: const EdgeInsets.only(left: 2.0,right: 2.0,top: 3.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border:Border.all(
                                              color: Colors.blue,
                                            ),
                                            color: Colors.white38,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                topLeft: Radius.circular(10)),

                                          ),
                                          width: _width * .02,
                                          height: _height * .05,
                                          // color: Color(0xFBB0E0E),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: Text("Last name",
                                              style:TextStyle(
                                                color: Colors.brown,
                                                fontSize: 15.0,
                                              ),),
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: Container(
                                        height: _height*.05,
                                        width:_width*.6,
                                        child: TextFormField(
                                          controller: _pnController,
                                          decoration: InputDecoration(
                                            // hintText: "Add Shop Address",
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
                              Padding(
                                padding: const EdgeInsets.only(left: 2.0,right: 2.0,top: 3.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border:Border.all(
                                              color: Colors.blue,
                                            ),
                                            color: Colors.white38,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                topLeft: Radius.circular(10)),

                                          ),
                                          width: _width * .02,
                                          height: _height * .05,
                                          // color: Color(0xFBB0E0E),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: Text("Email address",
                                              style:TextStyle(
                                                color: Colors.brown,
                                                fontSize: 15.0,
                                              ),),
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: Container(
                                        height: _height*.05,
                                        width:_width*.6,
                                        child: TextFormField(
                                          controller: _pnController,
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
                              Padding(
                                padding: const EdgeInsets.only(left: 2.0,right: 2.0,top: 3.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border:Border.all(
                                              color: Colors.blue,
                                            ),
                                            color: Colors.white38,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                topLeft: Radius.circular(10)),

                                          ),
                                          width: _width * .02,
                                          height: _height * .05,
                                          // color: Color(0xFBB0E0E),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: Text("Phone Number",
                                              style:TextStyle(
                                                color: Colors.brown,
                                                fontSize: 15.0,
                                              ),),
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: Container(
                                        height: _height*.05,
                                        width:_width*.6,
                                        child: TextFormField(
                                          controller: _pnController,
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
                              Padding(
                                padding:
                                EdgeInsets.only(left: 8.0, right: 8.0,top: 4),
                                child: Divider(
                                  color: Colors.black,
                                  height: 3.0,
                                  thickness: 2,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 2.0,right: 2.0,top: 3.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border:Border.all(
                                              color: Colors.blue,
                                            ),
                                            color: Colors.white38,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                topLeft: Radius.circular(10)),

                                          ),
                                          width: _width * .02,
                                          height: _height * .05,
                                          // color: Color(0xFBB0E0E),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: Text("Shop name",
                                              style:TextStyle(
                                                color: Colors.brown,
                                                fontSize: 15.0,
                                              ),),
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: Container(
                                        height: _height*.05,
                                        width:_width*.6,
                                        child: TextFormField(
                                          controller: _pnController,
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
                              Padding(
                                padding: const EdgeInsets.only(left: 2.0,right: 2.0,top: 3.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border:Border.all(
                                              color: Colors.blue,
                                            ),
                                            color: Colors.white38,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                topLeft: Radius.circular(10)),

                                          ),
                                          width: _width * .02,
                                          height: _height * .05,
                                          // color: Color(0xFBB0E0E),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: Text("District/City",
                                              style:TextStyle(
                                                color: Colors.brown,
                                                fontSize: 15.0,
                                              ),),
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: Container(
                                        height: _height*.05,
                                        width:_width*.6,
                                        child: TextFormField(
                                          controller: _pnController,
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
                              Padding(
                                padding: const EdgeInsets.only(left: 2.0,right: 2.0,top: 3.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border:Border.all(
                                              color: Colors.blue,
                                            ),
                                            color: Colors.white38,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                topLeft: Radius.circular(10)),

                                          ),
                                          width: _width * .02,
                                          height: _height * .05,
                                          // color: Color(0xFBB0E0E),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: Text("Upozilla/Thana",
                                              style:TextStyle(
                                                color: Colors.brown,
                                                fontSize: 15.0,
                                              ),),
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: Container(
                                        height: _height*.05,
                                        width:_width*.6,
                                        child: TextFormField(
                                          controller: _pnController,
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
                              Padding(
                                padding: const EdgeInsets.only(left: 2.0,right: 2.0,top: 3.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border:Border.all(
                                              color: Colors.blue,
                                            ),
                                            color: Colors.white38,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                topLeft: Radius.circular(10)),

                                          ),
                                          width: _width * .02,
                                          height: _height * .05,
                                          // color: Color(0xFBB0E0E),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: Text("Area/Ward/Union",
                                              style:TextStyle(
                                                color: Colors.brown,
                                                fontSize: 15.0,
                                              ),),
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: Container(
                                        height: _height*.05,
                                        width:_width*.6,
                                        child: TextFormField(
                                          controller: _pnController,
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
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0,top: 3.0),
                                child: TextFormField(
                                  controller: _pnController,
                                  maxLines: 6,
                                  decoration: InputDecoration(
                                    hintText: "Add shop Address",
                                    border: OutlineInputBorder(

                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      ),
                                    ),
                                  ),

                                ),
                              ),
                              
                              ElevatedButton(
                                  onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                    builder: (context) =>
                                    Moreinfo()),);

                              }, child: Text("Next"))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}