import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import 'custom_text.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key, required this.icon, required this.hintText})
      : super(key: key);

  final IconData icon;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: 50.h,
      decoration: const BoxDecoration(
        color: CustomColors.backgroundColor,
      ),
      child: Center(
        child: TextFormField(
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              icon,
              color: CustomColors.textColor,
              size: 30.sp,
            ),
            hintText: hintText,
            hintStyle: const TextStyle(
                color: CustomColors.textColor, fontWeight: FontWeight.w300),
          ),
        ),
      ),
    );
  }
}
