import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

class ConfirmCodeTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  const ConfirmCodeTextField({
    Key? key,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      child: Center(
        child: TextFormField(
          textAlign: TextAlign.center,
          autocorrect: true,
          controller: controller,
          decoration: InputDecoration(
            //border: InputBorder.none,
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green, width: 1.0),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 1.0),
            ),
            hintText: hintText,
            hintStyle: const TextStyle(
              color: CustomColors.textColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
