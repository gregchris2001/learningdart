import 'package:flutter/material.dart';
import 'package:learningdart/pages/home.dart';
import 'package:learningdart/pages/main1.dart';
import 'package:learningdart/pages/profile.dart';
import 'package:learningdart/pages/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main1(),
      routes: {
        '/home': (context) => const Home(),
        '/profile': (context) => const Profile(),
        '/settings': (context) => const Settings(),
      },
    );
  }
}
