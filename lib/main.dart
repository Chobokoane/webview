import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      child:InAppWebView(
        initialFile: "assets/index.html",
        initialHeaders: {},
        initialOptions: InAppWebViewWidgetOptions(
          inAppWebViewOptions: InAppWebViewOptions(
            debuggingEnabled: true,
          ),
        ),
        onWebViewCreated: (InAppWebViewController controller) {
          webView = controller;
        },
        onLoadStart: (InAppWebViewController controller, String url) {

        },
        onLoadStop: (InAppWebViewController controller, String url) {

        },
        onConsoleMessage: (InAppWebViewController controller, ConsoleMessage consoleMessage) {
          print("console message: ${consoleMessage.message}");
        },
      ),
    );
  }
}
