import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:olx_app/Screens/location_screen.dart';

import '../Widgets/custom_app_bar.dart';
import '../Widgets/custom_text.dart';
import '../Widgets/elevated_button.dart';
import '../Widgets/text_field.dart';
import '../Widgets/text_field_1.dart';
import '../constants.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);
  TextEditingController createPass = TextEditingController();
  TextEditingController createConfirmPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: CustomAppBar(
          icon: Icons.arrow_back_ios_new_outlined,
          bgColor: CustomColors.background,
          onPressed: () {
            Navigator.pop(context);
          },
          text: Constants.forgetPass,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.only(left: 16.w, right: 16.w, top: 35.h, bottom: 5.h),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: Constants.passCreate,
                      color: CustomColors.textColor,
                      textSize: 26.sp,
                      weight: FontWeight.w500,
                    ),
                    SizedBox(height: 10.h),
                    CustomText(
                      text: Constants.passDis1,
                      color: CustomColors.textColor,
                      textSize: 16.sp,
                      weight: FontWeight.w300,
                    ),
                    CustomText(
                      text: Constants.passDis2,
                      color: CustomColors.textColor,
                      textSize: 16.sp,
                      weight: FontWeight.w300,
                    ),
                    SizedBox(height: 25.h),
                    CustomTextField1(
                      icon: Icons.remove_red_eye_outlined,
                      hintText: Constants.pass,
                      controller: createPass,
                    ),
                    SizedBox(height: 20.h),
                    CustomTextField1(
                      icon: Icons.remove_red_eye_outlined,
                      hintText: Constants.confirmPass,
                      controller: createConfirmPass,
                    ),
                  ],
                ),
              ),
              CustomElevatedButton(
                text: Constants.save,
                size: 20.sp,
                bgColor: CustomColors.buttonColor,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Locationscreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
