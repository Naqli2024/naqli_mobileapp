import 'package:flutter/material.dart';
import 'package:flutter_application_1/enterNumberScreen.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/loginpage.dart';
import 'package:flutter_application_1/otpVerificationScreen.dart';
import 'package:flutter_application_1/verifiedScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: EnterNumberScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
