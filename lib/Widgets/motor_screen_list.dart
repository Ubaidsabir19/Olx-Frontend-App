import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import 'custom_text.dart';

class CategoriesChip extends StatelessWidget {
  const CategoriesChip({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: 50.h,
        width: 110.w,
        color: CustomColors.background,
        child: Center(
          child: CustomText(
            text: text,
            color: CustomColors.textColor,
            textSize: 16.sp,
            weight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
