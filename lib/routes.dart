import 'package:college_app/screens/login_screen/login_screen.dart';
import 'package:college_app/screens/splashscreen/splash_screen.dart';
import 'package:college_app/screens/welcome_page/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Map<String,WidgetBuilder> routes= {

  SplashScreen.routeName: (context) => SplashScreen(),
  //WelcomePage.routeName: (context) => WelcomePage(),
  LoginScreen.routeName: (context) => LoginScreen()

 };
