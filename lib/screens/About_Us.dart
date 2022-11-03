import 'package:college_app/constant_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

//import '../../../../constant.dart';

class AboutUsScreen extends StatelessWidget {
  static String routeName = 'AboutUsScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade600,
        appBar: AppBar(
          elevation: 1,
          title: Text('About us'),
          backgroundColor: kPrimaryColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios,
              size: 20,
            ),
            color: kTextWhiteColor,
            // icon: SvgPicture.asset(
            //   'assets/images/back_arrow.svg',
            //   width: 24,
            //   color: Colors.white,
            // ),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Stack(
                children: <Widget>[
                  // Text(
                  //   'About US',
                  //   style: TextStyle(
                  //     decoration: TextDecoration.underline,
                  //     fontFamily: 'Cardo',
                  //     fontSize: 30,
                  //     color: Colors.white,
                  //     fontWeight: FontWeight.w900,
                  //   ),
                  //),
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        child: Column(children: const [
                          SizedBox(
                           height: 30,
                          ),
                          CircleAvatar(
                            radius: 70.0,
                            backgroundImage: AssetImage('assets/images/refay.jpg'),
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Md.Refaydeen',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              )),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            '21it64',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                            ),
                          )
                        ]),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Container(
                        width: 140,
                        child: Column(children: const [
                          SizedBox(
                            height: 30,
                            width: 80,
                          ),
                          CircleAvatar(
                            radius: 70.0,
                            backgroundImage:
                            AssetImage('assets/images/saf.jpeg'),
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('Safrin Safana',textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,

                              )),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            '21it79',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                            ),
                          )
                        ]),
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      child: Column(children: const [
                        SizedBox(
                          height: 300,
                          width: 80,
                        ),
                        CircleAvatar(
                          radius: 65.0,
                          backgroundImage:
                          AssetImage('assets/images/miitlogo.png'),
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(
                          height: 10.0,
                          width: 80,
                        ),
                        Text('No name',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                            )),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          '19CSE010',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0,
                          ),
                        )
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 520,
                        ),
                        Text(
                          'Motivation',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: 'Cardo',
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "As we know “Time is money” and in a student's life the most valuable"
                              "thing is time. Students do not have to face any difficulty if the staff"
                              " members can track all the problems related to their students. So that "
                              "they can solve students' problems on time and without wasting time. "
                              "So we have included all the solutions in a single app.",
                              textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
