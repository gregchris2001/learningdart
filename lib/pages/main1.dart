// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:learningdart/pages/home.dart';
import 'package:learningdart/pages/profile.dart';
import 'package:learningdart/pages/settings.dart';

class Main1 extends StatefulWidget {
  const Main1({super.key});

  @override
  State<Main1> createState() => _Main1State();
}

class _Main1State extends State<Main1> {
  int selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List _pages = [
    Home(),
    Profile(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   title: Text(
      //     "Main",
      //     style: TextStyle(color: Colors.white),
      //   ),
      //   elevation: 0,
      // ),
      body: _pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: navigateBottomBar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "HOME",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "PROFILE"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "SETTINGS"),
        ],
      ),
    );
  }
}
