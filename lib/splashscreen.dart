import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter_submission/list_doctor.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 1,
      navigateAfterSeconds: ListDoctorPage(),
      image: Image.asset('images/logo.jpg'),
      backgroundColor: Colors.white,
      photoSize: 60.0,
    );
  }
}
