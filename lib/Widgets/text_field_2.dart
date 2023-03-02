import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

class CustomTextField2 extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final IconData? icon;

  const CustomTextField2({
    Key? key,
    required this.hintText,
    required this.controller,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 70.h,
      width: 150.w,
      child: Center(
        child: TextFormField(
          autocorrect: true,
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green, width: 1.0),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 1.0),
            ),
            prefixIcon: Icon(
              icon,
              color: CustomColors.textColor,
              size: 20.sp,
            ),
            hintText: hintText,
            hintStyle: const TextStyle(
              color: CustomColors.textColor,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
