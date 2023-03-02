import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChipText extends StatelessWidget {
  const ChipText({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  final String text;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        alignment: Alignment.topCenter,
        margin: const EdgeInsets.only(top: 10),
        child: Chip(
          label: Text(text),
        ),
      ),
    );
  }
}
