import 'package:flutter/material.dart';
import './pages/singin_signup.dart';
import './pages/singup.dart';
import './pages/home.dart';
import './pages/navigationHome.dart';

void main() => runApp(ChApp());

class ChApp extends StatelessWidget {
  const ChApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignInUpScreen(), // Use the SignInUpScreen widget here
    );
  }
}
