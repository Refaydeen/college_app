import 'package:college_app/constant_color.dart';
import 'package:college_app/routes.dart';
import 'package:college_app/screens/splashscreen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Miit',
      theme: ThemeData.dark().copyWith(
          //default color
          scaffoldBackgroundColor: kPrimaryColor,
          primaryColor: kPrimaryColor,
          textTheme: GoogleFonts.sourceSansProTextTheme(
            Theme.of(context).textTheme.apply().copyWith(
                bodyText1: TextStyle(
                    color: kTextWhiteColor,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold),
               subtitle2: TextStyle(color:kTextWhiteColor,fontSize: 18.0,
               fontWeight: FontWeight.w300)),
          )),
      //initial
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
