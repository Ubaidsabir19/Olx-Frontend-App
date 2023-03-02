import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:olx_app/Widgets/custom_text.dart';
import 'package:olx_app/constants.dart';

class SettingLists extends StatelessWidget {
  const SettingLists(
      {Key? key,
      required this.icon1,
      required this.text1,
      required this.text2,
      required this.icon2,
      required this.onPressed})
      : super(key: key);

  final IconData icon1;
  final String text1;
  final String text2;
  final IconData icon2;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: 105.h,
        color: CustomColors.backgroundColor,
        child: Padding(
          padding: EdgeInsets.only(left: 12.w, right: 12.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icon1,
                color: CustomColors.textColor,
                size: 30.sp,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: text1,
                    color: CustomColors.textColor,
                    textSize: 24.sp,
                    weight: FontWeight.w500,
                  ),
                  CustomText(
                    text: text2,
                    color: CustomColors.textColor,
                    textSize: 18.sp,
                    weight: FontWeight.w400,
                  ),
                ],
              ),
              Icon(
                icon2,
                color: CustomColors.textColor,
                size: 20.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
