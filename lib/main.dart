import 'package:flutter/material.dart';
import 'package:lab_10/screens/Home_Page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: lab_10(),
  ));
}

class lab_10 extends StatelessWidget {
  const lab_10({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
