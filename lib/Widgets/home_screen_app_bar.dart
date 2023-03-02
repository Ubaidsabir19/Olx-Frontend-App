import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:olx_app/Screens/home_screen.dart';
import 'package:olx_app/Screens/motors_screen.dart';
import 'package:olx_app/Screens/property_screen.dart';

import '../constants.dart';
import 'bottom_nav.dart';
import 'custom_text.dart';
import 'icon_button.dart';

class HomeScreenAppBar extends StatefulWidget {
  const HomeScreenAppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreenAppBar> createState() => _HomeScreenAppBarState();
}

class _HomeScreenAppBarState extends State<HomeScreenAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.backgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        leading: Padding(
          padding: EdgeInsets.only(left: 18.w),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BottomNavigation1()));
                },
                child: Text(
                  Constants.olx,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MotorsScreen()));
              },
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 18.r,
                    backgroundColor: CustomColors.background,
                    child: Icon(
                      Icons.car_repair,
                      size: 18.sp,
                      color: CustomColors.textColor,
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    Constants.motors,
                    style: TextStyle(
                      color: CustomColors.textColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PropertyScreen()));
              },
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 18.r,
                    backgroundColor: CustomColors.background,
                    child: Icon(
                      Icons.home_work_outlined,
                      size: 18.sp,
                      color: CustomColors.textColor,
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    Constants.property,
                    style: TextStyle(
                      color: CustomColors.textColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
