import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {Key? key,
      this.icon,
      required this.onPressed,
      required this.color,
      this.size})
      : super(key: key);
  final IconData? icon;
  final Function onPressed;
  final Color color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          onPressed();
        },
        child: Icon(
          icon,
          color: color,
          size: size,
        ));
  }
}
