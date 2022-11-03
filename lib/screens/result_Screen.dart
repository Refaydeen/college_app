import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../constant_color.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);
  static String routeName = 'ResultScreen';

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  late WebViewController _controller;

  void goBack() async {
    if (await _controller.canGoBack()) {
      await _controller.goBack();
    }
  }

  void goForward() async {
    if (await _controller.canGoForward()) {
      await _controller.goForward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Exam Result'),
        actions: [
          IconButton(onPressed: goBack, icon: Icon(Icons.arrow_back_ios_new)),
          IconButton(onPressed: goForward, icon: Icon(Icons.arrow_forward_ios)),
        ],
      ),
      backgroundColor: kTextWhiteColor,
      body: SafeArea(
        child: WebView(
          initialUrl: 'https://result.unom.ac.in/results/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController web) {
            _controller = web;
          },
        ),
      ),
    );
  }
}
