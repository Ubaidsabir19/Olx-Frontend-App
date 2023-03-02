import 'package:flutter/material.dart';
import 'package:olx_app/constants.dart';

import '../Widgets/custom_app_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: CustomAppBar(
          icon: Icons.clear,
          bgColor: CustomColors.background,
          onPressed: () {
            Navigator.pop(context);
          },
          text: Constants.notifications,
        ),
      ),
    );
  }
}
