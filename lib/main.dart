import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Fire Blaster",
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.red),
  ));
}

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
          children: <Widget>[
            // DrawerHeader(
            //     child: Text(
            //       "Hi, I am Drawer",
            //       style: TextStyle(color: Colors.white),
            //     ),
            //     decoration: BoxDecoration(color: Colors.purple)),
            UserAccountsDrawerHeader(
              accountName: Text("FireBlaster"),
              accountEmail: Text("fire.blaster@gmail.com"),
              currentAccountPicture: Image.network(
                  "https://images.unsplash.com/photo-1655720406100-3f1eda0a4519?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80"),
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
