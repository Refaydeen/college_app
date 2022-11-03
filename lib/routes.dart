import 'package:college_app/screens/About_Us.dart';
import 'package:college_app/screens/event_Screen.dart';
import 'package:college_app/screens/fee_screen/payment_Screen/PaymentPage.dart';
import 'package:college_app/screens/fee_screen/feespayment.dart';
import 'package:college_app/screens/fee_screen/Payment.dart';
import 'package:college_app/screens/feedback_Screen.dart';
import 'package:college_app/screens/home_screen/home_screen.dart';
import 'package:college_app/screens/login_screen/login_screen.dart';
import 'package:college_app/screens/my_Profile/my_Profile.dart';
import 'package:college_app/screens/result_Screen.dart';
import 'package:college_app/screens/signup_Screen/signup_screen.dart';
import 'package:college_app/screens/splashscreen/splash_screen.dart';
import 'package:college_app/screens/website_Screen.dart';
import 'package:college_app/welcomeScreen/welcome_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  MyProfileScreen.routeName:(context)=>MyProfileScreen(),
  EventScreen.routeName:(context)=>EventScreen(),
  WebsiteScreen.routeName:(context)=>WebsiteScreen(),
  ResultScreen.routeName:(context)=>ResultScreen(),
  FeedBackScreen.routeName:(context)=>FeedBackScreen(),

  FeesPayment.routeName:(context)=>FeesPayment(),
  Payment.routeName:(context)=>Payment(),
  PaymentPage.routeName:(context)=>PaymentPage(),
  AboutUsScreen.routeName:(context)=>AboutUsScreen(),

};
