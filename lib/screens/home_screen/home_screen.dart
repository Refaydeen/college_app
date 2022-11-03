import 'package:college_app/constant_color.dart';
import 'package:college_app/screens/About_Us.dart';
import 'package:college_app/screens/event_Screen.dart';
import 'package:college_app/screens/fee_screen/feespayment.dart';
import 'package:college_app/screens/feedback_Screen.dart';
import 'package:college_app/screens/home_screen/widgets/student_data.dart';
import 'package:college_app/screens/my_Profile/my_Profile.dart';
import 'package:college_app/screens/result_Screen.dart';
import 'package:college_app/screens/website_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
//import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          //wrap with PreferredSize
          preferredSize: Size.fromHeight(45), //height of appbar
          child: AppBar(
            //elevation: 12.0,
            title: Text(
              "MIIT",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            centerTitle: true, //appbar title
            backgroundColor: kSecondaryColor, //appbar background color
          )),
      drawer: Drawer(
        backgroundColor: Colors.transparent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              // margin: EdgeInsets.zero,

              decoration: BoxDecoration(
                color: kTextGreyColor,
                image: DecorationImage(
                  opacity: 0.5,
                  image: AssetImage('assets/images/MIITBuildingmain.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              accountName: Text(
                'Aandavar',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
              accountEmail: Text(
                'Aandavar@gmail.com',
              ),
              currentAccountPicture: CircleAvatar(
                //backgroundColor: kTextGreyColor,
                backgroundImage: AssetImage('assets/images/viru.jpg'),
                // foregroundColor: kTextGreyColor,
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'My Profile',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              onTap: () {
                Navigator.pushNamed(context, MyProfileScreen.routeName);
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text(
                'About Us',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              onTap: () {
                Navigator.pushNamed(context, AboutUsScreen.routeName);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                'Logout',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              onTap: () {
                Navigator.pushNamed(context, routeName);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          //we will divid ethe screen into two parts
          //fixe height for first half
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StudentName(
                          studentName: 'Aandavarey',
                        ),
                        kHalfSizedBox,
                        StudentClass(
                          studentClass: 'MCA-B Batch |Roll No:21it64',
                        ),
                        kHalfSizedBox,
                        StudentYear(
                          studentYear: '2021-23',
                        ),
                      ],
                    ),
                    kHalfSizedBox,
                    StudentPicture(
                      picAddress: 'assets/images/viru.jpg',
                      onPress: () {
                        //go to profile
                        Navigator.pushNamed(context, MyProfileScreen.routeName);
                      },
                    ),
                  ],
                ),
                sizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    StudentDataCard(
                      onPressAttendance: (
                          //attendance screen
                          ) {},
                      attendanceTitle: 'Attendance',
                      attendancePercentage: '80.74%',
                    ),
                    StudentDataCard(
                      onPressAttendance: (
                          //fee screen
                          ) {
                        Navigator.pushNamed(context, FeesPayment.routeName);
                      },
                      attendanceTitle: 'Fee Due',
                      attendancePercentage: '50,200',
                    ),
                  ],
                ),
              ],
            ),
          ),

          //other will use all the remaining  height of screen
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width,
                //
                //height: MediaQuery.of(context).size.height/2.8,
                decoration: BoxDecoration(
                  color: kOtherColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding * 3),
                    topRight: Radius.circular(kDefaultPadding * 3),
                  ),
                ),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, FeedBackScreen.routeName);
                          },
                          icon: 'assets/icons/feedback.svg',
                          title: 'FeedBack',
                        ),
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/assessment1.svg',
                          title: 'Assignments',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, EventScreen.routeName);
                          },
                          icon: 'assets/icons/event.svg',
                          title: 'Events',
                        ),
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/timetable.svg',
                          title: 'Time Table',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, FeesPayment.routeName);
                          },
                          icon: 'assets/icons/fee.svg',
                          title: 'Fee Payment',
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(
                                context, WebsiteScreen.routeName);
                          },
                          icon: 'assets/icons/website.svg',
                          title: 'website',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/About.svg',
                          title: 'About College',
                        ),
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/gallery.svg',
                          title: 'Gallery',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(
                                context, ResultScreen.routeName);
                          },
                          icon: 'assets/icons/examResult.svg',
                          title: 'Exam Result',
                        ),
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/gallery.svg',
                          title: 'Gallery',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard(
      {Key? key,
      required this.onPress,
      required this.icon,
      required this.title})
      : super(key: key);
  final VoidCallback onPress;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding / 2),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(kDefaultPadding / 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              height: 45.0,
              width: 45.0,
              //color: Colors.white60,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(
              height: kDefaultPadding / 3,
            ),
          ],
        ),
      ),
    );
  }
}
