import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:olx_app/Widgets/custom_text.dart';
import 'package:olx_app/constants.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    Key? key,
    required this.color,
    required this.icon,
    required this.text,
    required this.weight,
    required this.onPressed,
  }) : super(key: key);

  final Color color;
  final IconData icon;
  final String text;
  final FontWeight weight;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 30.r,
            backgroundColor: color,
            child: Icon(
              icon,
              color: CustomColors.textColor,
            ),
          ),
          SizedBox(height: 10.h),
          CustomText(
            text: text,
            color: CustomColors.textColor,
            textSize: 14.sp,
            weight: weight,
          )
        ],
      ),
    );
  }
}
