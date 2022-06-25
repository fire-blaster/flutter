// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors, file_names

import 'package:demo/widgets/bgImage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login Page'),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            bgImage(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Card(
                    child: Column(
                      children: [
                        Form(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                    hintText: "Enter Username",
                                    labelText: "Username"),
                              ),
                              const SizedBox(
                                height: 28,
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                    hintText: "Enter Password",
                                    labelText: "Password"),
                              ),
                            ],
                          ),
                        )),
                        const SizedBox(
                          height: 28,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => HomePage()));
                              Navigator.pushNamed(context, "/home");
                            },
                            child: const Text("SignIn"),
                            color: Colors.blue,
                            textColor: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
