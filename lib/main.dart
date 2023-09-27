import 'package:ecshop/loginscreen.dart';
import 'package:flutter/material.dart';
import 'Screen/loginscreen.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mylogin(),
      // home: demoinfo(),
    );
  }
}
