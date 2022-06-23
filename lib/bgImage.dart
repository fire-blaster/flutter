// ignore_for_file: file_names, use_key_in_widget_constructors, camel_case_types

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
