import 'package:college_app/constant_color.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key? key}) : super(key: key);
  static String routeName = 'ProfileScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        centerTitle: true,
        backgroundColor: kSecondaryColor,
        actions: [
          Container(
            child: Row(
              children: [],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(kDefaultPadding * 2),
                bottomRight: Radius.circular(kDefaultPadding * 2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  maxRadius: 50.0,
                  minRadius: 50.0,
                  backgroundColor: kSecondaryColor,
                  backgroundImage: AssetImage('assets/images/viru.jpg'),
                ),
                sizedBox,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Aandavarey',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      'MCA-B Batch|Roll no:21it64',
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                         fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
