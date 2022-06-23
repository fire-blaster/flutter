import 'package:flutter/material.dart';

class bgImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/login.jpg",
      fit: BoxFit.cover,
    );
  }
}
