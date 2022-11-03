// ignore_for_file: file_names

import 'package:college_app/screens/fee_screen/Payment.dart';
import 'package:flutter/material.dart';



class FeesPayment extends StatelessWidget {
  const FeesPayment({Key? key}) : super(key: key);
  static String routeName = 'FeesPayment';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Stripe',
      theme: ThemeData(
          primarySwatch: Colors.red
      ),
      home: Payment(),
    );
  }
}
