import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import 'icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.bgColor,
    required this.icon,
    required this.onPressed,
    this.text,
    this.textColor,
    this.size,
  }) : super(key: key);
  final Color bgColor;
  final IconData icon;
  final double? size;
  final Function onPressed;
  final String? text;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        leading: CustomIconButton(
          icon: icon,
          size: 24.sp,
          onPressed: onPressed,
          color: CustomColors.textColor,
        ),
        title: Text(
          text ?? '',
          style: TextStyle(
              color: CustomColors.textColor,
              fontSize: 22.sp,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
