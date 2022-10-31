import 'package:college_app/screens/home_screen/home_screen.dart';
import 'package:college_app/screens/login_screen/login_screen.dart';
import 'package:college_app/screens/my_Profile/my_Profile.dart';
import 'package:college_app/screens/signup_Screen/signup_screen.dart';
import 'package:college_app/screens/splashscreen/splash_screen.dart';
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

};
