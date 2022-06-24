import 'package:demo/pages/HomePage.dart';
import 'package:demo/pages/LoginPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Fire Blaster",
    home: LoginPage(),
    theme: ThemeData(primarySwatch: Colors.red),
    routes: {
      "/Login": (context) => LoginPage(),
      "/home": (context) => HomePage()
    },
  ));
}
