import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    title: "Awesome App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Krishna Grocery"),
          centerTitle: true,
          backgroundColor: Colors.black,
          foregroundColor: Colors.amber,
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                color: Colors.black,
                width: 280,
                height: 480,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        width: 100,
                        height: 100,
                        color: Colors.red,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        width: 100,
                        height: 100,
                        color: Colors.green,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
