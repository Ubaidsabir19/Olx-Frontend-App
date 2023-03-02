import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:olx_app/Screens/step_login_screen.dart';
import 'package:olx_app/constants.dart';

import '../Widgets/custom_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const StepLoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.splashBackground,
      body: SafeArea(
        child: Center(
          child: CustomText(
            text: Constants.olx,
            color: CustomColors.splashText,
            textSize: 90.sp,
            weight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
