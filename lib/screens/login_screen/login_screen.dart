import 'package:college_app/constant_color.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  //const ({Key? key}) : super(key: key);
  static String routeName = 'LoginScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/transLogo.png',
                height: 150.0,
                width: 150.0,
              ),
              SizedBox(
                height: kDefaultPadding / 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Hi',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontWeight: FontWeight.w200,
                          )),
                  Text('Measian', style: Theme.of(context).textTheme.bodyText1),
                ],
              ),
              SizedBox(
                height: kDefaultPadding / 6,
              ),
              Text('Sign to continue',
                  style: Theme.of(context).textTheme.subtitle2),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.only(
              topLeft: Radius.circular(kDefaultPadding*3),
              topRight: Radius.circular(kDefaultPadding*3),
              //bottomLeft: Radius.circular(kDefaultPadding*3),
              //bottomRight: Radius.circular(kDefaultPadding*3),
            ),
            color: kOtherColor,
          ),
          child: Column(
             children: [
               Form(
                   child: Column(
                     children: [
                         TextFormField(
                           keyboardType: TextInputType.emailAddress,
                           textDirection: TextDirection.ltr,
                           style: TextStyle(
                             color:kTextBlackColor,
                             fontSize:20.0,
                             fontWeight: FontWeight.w300,

                           ),
                            decoration: InputDecoration(
                              labelText: 'Enter the Email',
                              floatingLabelBehavior: FloatingLabelBehavior.always,

                            ),

                         )
                      ],

                   )
               ),
             ],
          ),
        )
      ],
    ));
  }
}
