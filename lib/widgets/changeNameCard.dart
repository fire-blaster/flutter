// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

import 'bgImage.dart';

class changeNameCard extends StatelessWidget {
  const changeNameCard({
    Key? key,
    required this.myText,
    required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        bgImage(),
        const SizedBox(
          height: 20,
        ),
        Text(
          myText,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _nameController,
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter Name",
              labelText: "Name*",
            ),
          ),
        )
      ],
    );
  }
}
