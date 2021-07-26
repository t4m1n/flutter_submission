import 'package:flutter/material.dart';
import 'package:flutter_submission/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halodoc',
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(),
    );
  }
}
