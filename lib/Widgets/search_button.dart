import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchButton extends StatelessWidget {
  final Function onPressed;
  final String text;

  final double? size;
  final Color? color;
  final Color? bgColor;
  final FontWeight? weight;
  final IconData icon;

  const SearchButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.size,
    this.color,
    this.bgColor,
    this.weight,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Card(
        elevation: 2.0,
        color: bgColor,
        child: Container(
          height: 52.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon),
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
