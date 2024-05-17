import 'package:flutter/material.dart';
import 'package:ttfc_app/screen/homescreen/home.dart';
import 'package:ttfc_app/screen/loginscreen/login.dart';
import 'package:ttfc_app/screen/loginscreen/otp.dart';
import 'package:ttfc_app/screen/startupscreen/startup.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

void main() async {
  runApp(const MyApp());

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const StartupScreen(),
    );
  }
}