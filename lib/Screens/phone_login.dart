import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:olx_app/Screens/forgot_password.dart';
import 'package:olx_app/Widgets/custom_text.dart';
import 'package:olx_app/constants.dart';
import '../Widgets/custom_app_bar.dart';
import '../Widgets/elevated_button.dart';
import '../Widgets/text_field.dart';

class PhoneLogin extends StatelessWidget {
  PhoneLogin({Key? key}) : super(key: key);
  TextEditingController mobileController = TextEditingController();

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
          text: Constants.login,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h, bottom: 5.h),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 50.r,
                      backgroundColor: CustomColors.background,
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/user.png',
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    CustomText(
                      text: Constants.phoneNo,
                      color: CustomColors.textColor,
                      textSize: 24.sp,
                      weight: FontWeight.w500,
                    ),
                    SizedBox(height: 10.h),
                    CustomText(
                      text: Constants.code,
                      color: CustomColors.textColor,
                      textSize: 16.sp,
                      weight: FontWeight.w400,
                    ),
                    SizedBox(height: 15.h),
                    CustomTextField(
                      icon: Icons.flag,
                      hintText: Constants.pNo,
                      controller: mobileController,
                    ),
                  ],
                ),
              ),
              CustomElevatedButton(
                text: Constants.next,
                size: 20.sp,
                bgColor: CustomColors.buttonColor,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ForgotPassword()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
