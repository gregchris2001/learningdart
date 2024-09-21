// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController myController = TextEditingController();

  String greetingMessage = "";

  void greetUser() {
    String userName = myController.text;
    setState(() {
      greetingMessage = "Hello, $userName";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(greetingMessage),
            TextField(
              controller: myController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Pascal",
                  hintStyle: TextStyle(fontSize: 13, color: Colors.grey)),
            ),
            ElevatedButton(onPressed: greetUser, child: Text("Greet"))
          ],
        ),
      )),
    );
  }
}
