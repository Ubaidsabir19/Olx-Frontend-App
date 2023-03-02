import 'package:flutter/material.dart';

class CustomElevatedButton1 extends StatelessWidget {
  const CustomElevatedButton1({Key? key, required this.onPressed, this.child})
      : super(key: key);

  final Function onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: child,
    );
  }
}
