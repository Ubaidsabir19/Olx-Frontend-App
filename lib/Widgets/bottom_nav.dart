import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Screens/adds_screen.dart';
import '../Screens/chat_screen.dart';
import '../Screens/profile_screen.dart';
import '../constants.dart';
import '../screens/home_screen.dart';

class BottomNavigation1 extends StatefulWidget {
  const BottomNavigation1({Key? key}) : super(key: key);

  @override
  _BottomNavigation1State createState() => _BottomNavigation1State();
}

class _BottomNavigation1State extends State<BottomNavigation1> {
  int _selectedIndex = 0;
  static List<Widget> screens = <Widget>[
    HomeScreen(),
    ChatScreen(),
    AddsScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screens.elementAt(_selectedIndex),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 22.h),
        child: SizedBox(
          height: 70.h,
          width: 70.w,
          child: FloatingActionButton(
            backgroundColor: Colors.transparent,
            elevation: 2,
            onPressed: () {},
            child: Container(
              height: 70.h,
              width: 70.w,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightBlueAccent, width: 7.w),
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: const Alignment(0.7, -0.5),
                  end: const Alignment(0.6, 0.5),
                  colors: [
                    Color(0xFFFFFFFF),
                    Color(0xFFF2F2F2),
                  ],
                ),
              ),
              child: Icon(
                Icons.add,
                size: 26.sp,
                color: CustomColors.textColor,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 80.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
              icon: _selectedIndex == 0
                  ? Icon(
                      Icons.home_filled,
                      color: CustomColors.iconColor,
                      size: 30.sp,
                    )
                  : Icon(
                      Icons.home_outlined,
                      color: CustomColors.textColor,
                      size: 30.sp,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
              icon: _selectedIndex == 1
                  ? Icon(
                      Icons.chat_bubble,
                      color: CustomColors.iconColor,
                      size: 24.sp,
                    )
                  : Icon(
                      Icons.chat_outlined,
                      color: CustomColors.textColor,
                      size: 24.sp,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
              icon: _selectedIndex == 2
                  ? Icon(
                      Icons.favorite,
                      color: CustomColors.iconColor,
                      size: 26.sp,
                    )
                  : Icon(
                      Icons.favorite_border_rounded,
                      color: CustomColors.textColor,
                      size: 26.sp,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  _selectedIndex = 3;
                });
              },
              icon: _selectedIndex == 3
                  ? Icon(
                      Icons.person,
                      color: CustomColors.iconColor,
                      size: 28.sp,
                    )
                  : Icon(
                      Icons.person_outline,
                      color: CustomColors.textColor,
                      size: 28.sp,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
