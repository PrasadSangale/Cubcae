import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: camel_case_types
class mydog4 extends StatelessWidget {
  const mydog4({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            color: Colors.black,
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            child: WebView(
              initialUrl:
                  "https://en.wikipedia.org/wiki/Therapy_dog",
              javascriptMode: JavascriptMode.unrestricted,
            ),
          ),
        ),
      ),
    );
  }
}
