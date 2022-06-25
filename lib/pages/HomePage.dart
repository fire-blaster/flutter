// ignore_for_file: prefer_typing_uninitialized_variables, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import 'dart:convert';
import '../widgets/drawer.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _nameController = TextEditingController();
  var myText = "Login";
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(Uri.parse(url));
    // print(res.body);
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Fire Blaster"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, "/Login");
            },
          )
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: data != null
              ? ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Image.network(data[index]["url"]),
                        title: Text(data[index]["title"]),
                      ),
                    );
                  },
                )
              : const Center(
                  child: CircularProgressIndicator(),
                )),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // myText = _nameController.text;
          // setState(() {});
          Navigator.pushNamed(context, "/vector");
        },
        child: const Icon(Icons.refresh_rounded),
      ),
    );
  }
}
