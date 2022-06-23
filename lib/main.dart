import 'package:flutter/material.dart';

import 'pages/HomePage.dart';

void main() {
  runApp(MaterialApp(
    title: "Fire Blaster",
    home: const HomePage(),
    theme: ThemeData(primarySwatch: Colors.red),
  ));
}
