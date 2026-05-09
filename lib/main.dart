import 'package:flutter/material.dart';
import 'package:the_social_app/f%60eatures/splash_screen/spalsh_screen_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SpalshScreenContainer(),
    );
  }
}

