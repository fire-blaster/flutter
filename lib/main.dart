import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Fire Blaster",
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.red),
  ));
}

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fire Blaster"),
        centerTitle: true,
      ),
      body: Container(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("FireBlaster"),
              accountEmail: Text("fire.blaster@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://media.istockphoto.com/photos/evil-skull-in-flames-and-smoke-picture-id483530145?k=20&m=483530145&s=612x612&w=0&h=BESMbH43tJqfHS85mPMT3mhzq0Ja0eshNSzaoAEgNNk=",
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("User"),
              subtitle: Text("FireBlaster"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("fire.blaster@gmail.com"),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Phone"),
              subtitle: Text("7894567850"),
              trailing: Icon(Icons.mobile_friendly),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
    );
  }
}
