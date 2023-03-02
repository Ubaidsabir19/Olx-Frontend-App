import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:olx_app/Widgets/custom_text.dart';

import '../constants.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: CustomColors.background,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: CustomColors.backgroundColor,
          title: CustomText(
            text: Constants.chats,
            color: CustomColors.textColor,
            textSize: 24.sp,
            weight: FontWeight.w500,
          ),
          bottom: const TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: Constants.all,
              ),
              Tab(
                text: Constants.buying,
              ),
              Tab(
                text: Constants.selling,
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text(Constants.chats),
            ),
            Center(
              child: Text(Constants.buying),
            ),
            Center(
              child: Text(Constants.selling),
            ),
          ],
        ),
      ),
    );
  }
}
