import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:olx_app/constants.dart';

import '../Widgets/confirm_code_textfield.dart';
import '../Widgets/custom_app_bar.dart';
import '../Widgets/custom_text.dart';

class EmailConfirmation extends StatelessWidget {
  EmailConfirmation({Key? key}) : super(key: key);
  TextEditingController confirmCode1 = TextEditingController();
  TextEditingController confirmCode2 = TextEditingController();
  TextEditingController confirmCode3 = TextEditingController();
  TextEditingController confirmCode4 = TextEditingController();

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
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 40.h),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: Constants.enter,
                  color: CustomColors.textColor,
                  textSize: 36.sp,
                  weight: FontWeight.w500,
                ),
                CustomText(
                  text: Constants.confirmCode,
                  color: CustomColors.textColor,
                  textSize: 36.sp,
                  weight: FontWeight.w500,
                ),
                SizedBox(height: 30.h),
                CustomText(
                  text: Constants.enterCode,
                  color: CustomColors.textColor,
                  textSize: 18.sp,
                  weight: FontWeight.w300,
                ),
                SizedBox(height: 50.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ConfirmCodeTextField(
                      hintText: Constants.hintCode,
                      controller: confirmCode1,
                    ),
                    ConfirmCodeTextField(
                      hintText: Constants.hintCode,
                      controller: confirmCode2,
                    ),
                    ConfirmCodeTextField(
                      hintText: Constants.hintCode,
                      controller: confirmCode3,
                    ),
                    ConfirmCodeTextField(
                      hintText: Constants.hintCode,
                      controller: confirmCode4,
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: CustomText(
                      text: Constants.resendCode,
                      color: CustomColors.textColor,
                      textSize: 18.sp,
                      weight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
