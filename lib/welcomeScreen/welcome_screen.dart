import 'package:college_app/components/custom_buttons.dart';
import 'package:college_app/constant_color.dart';
import 'package:college_app/screens/login_screen/login_screen.dart';
import 'package:college_app/screens/signup_Screen/signup_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static String routeName = 'WelcomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOtherColor,
      body: SafeArea(
         child: Container(
           //double infinty make it big as parent allows
           //media query make it big as per screen
             width: double.infinity,
             height: MediaQuery.of(context).size.height,
             padding: EdgeInsets.symmetric(horizontal:30,vertical: 50),
            child: Column(

              //even space distribution
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:<Widget> [
                    Column(
                        children:<Widget> [

                            Text('Welcome to Measi',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 30,
                                color: kTextBlackColor,
                              ),

                            ),
                          sizedBox,
                          Text('Measi is not a college ,Measi is an emotion haha,this college provides support but not that is Measi',
                             textAlign: TextAlign.center,
                             style: TextStyle(
                                 color: kHalfGreyColor,
                                 fontSize: 15,
                             ),
                          ),

                        ],
                    ),
                  Container(
                      height: MediaQuery.of(context).size.height/3,
                     decoration: BoxDecoration(
                         image: DecorationImage(
                           image: AssetImage('assets/images/welcome.png'),
                         ),
                     ),
                  ),
                  Column(
                    children:<Widget> [
                       MaterialButton(
                         minWidth: double.infinity,
                         height: 60,
                         onPressed: () {
                           Navigator.pushNamedAndRemoveUntil(
                               context,
                               LoginScreen.routeName,
                                   (route) => true);
                         },
                         shape: RoundedRectangleBorder(
                             side: BorderSide(
                                 color:Colors.black,
                             ),
                           borderRadius: BorderRadius.circular(50),

                         ),
                         child: Text('Login',
                         style: TextStyle(fontWeight: FontWeight.w600,
                         fontSize: 18,
                         color: kTextBlackColor,
                         ),
                         ),

                       ),
                       sizedBox,
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context,
                              SignUpScreen.routeName,
                                  (route) => true);
                        },
                        color: kSecondaryColor,
                        shape: RoundedRectangleBorder(
                          // side: BorderSide(
                          //   color:Colors.black,
                          // ),
                          borderRadius: BorderRadius.circular(50),

                        ),
                        child: Text('Sign Up',
                          style: TextStyle(fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: kTextWhiteColor,
                          ),
                        ),

                      ),
                    ],
                  ),
                ],
            ),
         ),
      ),
    );
  }
}
