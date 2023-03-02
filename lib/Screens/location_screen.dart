import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:olx_app/Screens/home_screen.dart';

import '../Widgets/bottom_nav.dart';
import '../Widgets/custom_text.dart';
import '../constants.dart';

class Locationscreen extends StatelessWidget {
  const Locationscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 5.w, right: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Image(
                  image: AssetImage('assets/map1.jpeg'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w),
                child: Column(
                  children: [
                    CustomText(
                      text: Constants.whereDo,
                      color: CustomColors.textColor,
                      textSize: 28.sp,
                      weight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
              CustomText(
                text: Constants.buySell,
                color: CustomColors.textColor,
                textSize: 28.sp,
                weight: FontWeight.w500,
              ),
              SizedBox(height: 20.h),
              CustomText(
                text: Constants.locationDis1,
                color: CustomColors.textColor,
                textSize: 16.sp,
                weight: FontWeight.w300,
              ),
              CustomText(
                text: Constants.locationDis2,
                color: CustomColors.textColor,
                textSize: 16.sp,
                weight: FontWeight.w300,
              ),
              SizedBox(height: 30.h),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BottomNavigation1()));
                },
                child: Card(
                  elevation: 2.0,
                  color: CustomColors.textColor,
                  child: Container(
                    height: 55.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: CustomColors.background,
                        ),
                        SizedBox(width: 10.w),
                        CustomText(
                          text: Constants.nearMe,
                          color: CustomColors.background,
                          textSize: 18.sp,
                          weight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              TextButton(
                onPressed: () {},
                child: CustomText(
                  text: Constants.otherAddress,
                  color: CustomColors.textColor,
                  textSize: 18.sp,
                  weight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
