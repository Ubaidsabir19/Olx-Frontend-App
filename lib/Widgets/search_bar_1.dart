import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import 'custom_text.dart';

class SearchBar1 extends StatelessWidget {
  const SearchBar1(
      {Key? key,
      required this.icon,
      required this.hintText,
      required this.controller})
      : super(key: key);

  final IconData icon;
  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: CustomColors.backgroundColor,
      ),
      child: Center(
        child: TextFormField(
          controller: controller,
          textAlignVertical: TextAlignVertical.center,
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
