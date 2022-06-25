import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VectorDemo extends StatelessWidget {
  const VectorDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          SizedBox(
              height: 357,
              width: 840,
              child: WebView(
                javascriptMode: JavascriptMode.unrestricted,
                // initialUrl: "https://app.vectary.com/p/3cTca11HaPVLIQBjBpLFHF",
                initialUrl: "https://www.airpano.com/360photo/cancun-2022/",
              )),
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 8.0),
          //   child: Text(
          //     "ABCD",
          //     style: TextStyle(fontSize: 16),
          //   ),
          // ),
          // SizedBox(
          //   height: 8,
          // )
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Hello",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
