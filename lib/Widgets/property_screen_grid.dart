import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:olx_app/Widgets/custom_text.dart';
import 'package:olx_app/constants.dart';

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid(
      {Key? key,
      required this.text1,
      required this.onPressed,
      required this.text2})
      : super(key: key);

  final String text1;
  final String text2;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Card(
        elevation: 2.0,
        child: Container(
          height: 65.h,
          width: 100.w,
          color: CustomColors.background,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: text1,
                color: CustomColors.textColor,
                textSize: 14.sp,
                weight: FontWeight.w400,
              ),
              SizedBox(height: 5.h),
              CustomText(
                text: text2,
                color: CustomColors.textColor,
                textSize: 11.sp,
                weight: FontWeight.w300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
