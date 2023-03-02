import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  final Function onPressed;
  final String text;

  final double? size;
  final Color? color;
  final Color? bgColor;
  final FontWeight? weight;

  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.size,
    this.color,
    this.bgColor,
    this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Card(
        elevation: 1.0,
        color: bgColor,
        child: Container(
          height: 60.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: color,
                  fontSize: size,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
