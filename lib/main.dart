// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:visiblr/Screens/Splash_Screen.dart';
import 'package:visiblr/Screens/home_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {'/homeScreen': (context) => HomeScreen()},
    );
  }
}
