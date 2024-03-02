import 'package:exam_c10/home_screen.dart';
import 'package:exam_c10/there_screen.dart';
import 'package:exam_c10/two_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: ThreeScreen.routName,
      routes: {
        ThreeScreen.routName: (context) => ThreeScreen(),
      },
    );
  }
}


