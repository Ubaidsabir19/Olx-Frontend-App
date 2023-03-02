import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widgets/custom_text.dart';
import '../constants.dart';

class AddsScreen extends StatelessWidget {
  const AddsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: CustomColors.background,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: CustomColors.backgroundColor,
          title: CustomText(
            text: Constants.myAds,
            color: CustomColors.textColor,
            textSize: 24.sp,
            weight: FontWeight.w500,
          ),
          bottom: const TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: Constants.ads,
              ),
              Tab(
                text: Constants.favourites,
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text(Constants.ads),
            ),
            Center(
              child: Text(Constants.favourites),
            ),
          ],
        ),
      ),
    );
  }
}
