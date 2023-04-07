import 'package:cipherschool/screens/Courses.dart';
import 'package:cipherschool/screens/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'Home',
    routes: {
      'Home': (context) => Home(),
      'Course':(context)=> Course(),
    },
    debugShowCheckedModeBanner: false,
  ));
}