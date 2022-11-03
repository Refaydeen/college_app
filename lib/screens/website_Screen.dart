import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../constant_color.dart';

class WebsiteScreen extends StatefulWidget {
  const WebsiteScreen({Key? key}) : super(key: key);
  static String routeName = 'WebsiteScreen';


  @override
  State<WebsiteScreen> createState() => _WebsiteScreenState();
}

class _WebsiteScreenState extends State<WebsiteScreen> {
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
        title: Text('Website'),
        actions: [
          IconButton(onPressed: goBack, icon: Icon(Icons.arrow_back_ios_new)),
          IconButton(onPressed: goForward, icon: Icon(Icons.arrow_forward_ios)),
        ],
      ),
      backgroundColor: kTextWhiteColor,
      body: SafeArea(
        child: WebView(
          initialUrl: 'https://measiit.edu.in/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController web) {
            _controller = web;
          },
          gestureRecognizers: Set()
            ..add(Factory<VerticalDragGestureRecognizer>(
                    () => VerticalDragGestureRecognizer())),

        ),
      ),
    );
  }
}
