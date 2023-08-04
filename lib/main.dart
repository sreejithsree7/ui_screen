import 'package:flutter/material.dart';
import 'package:ui_screen/views/home.dart';
import 'package:ui_screen/views/screen_1.dart';
import 'package:ui_screen/views/screen_2.dart';
import 'package:ui_screen/views/screen_3.dart';
import 'package:ui_screen/views/screen_4.dart';
import 'package:ui_screen/views/screen_5.dart';
import 'package:ui_screen/views/screen_6.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(),
    );
  }
}
