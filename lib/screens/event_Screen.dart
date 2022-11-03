import 'package:college_app/constant_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter/platform_interface.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({Key? key}) : super(key: key);
  static String routeName = 'EventScreen';

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
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
        title: Text('Events'),
        actions: [
          IconButton(onPressed: goBack, icon: Icon(Icons.arrow_back_ios_new)),
          IconButton(onPressed: goForward, icon: Icon(Icons.arrow_forward_ios)),
        ],
      ),
      backgroundColor: kTextWhiteColor,
      body: SafeArea(
        child: WebView(
          initialUrl: 'https://measiit.edu.in/news-events/ ',
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
