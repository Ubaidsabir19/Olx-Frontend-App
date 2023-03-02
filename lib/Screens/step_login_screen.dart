import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:olx_app/Screens/phone_login.dart';
import 'package:olx_app/Widgets/custom_text.dart';
import 'package:olx_app/constants.dart';
import '../Widgets/custom_app_bar.dart';
import 'email_login.dart';

class StepLoginScreen extends StatelessWidget {
  const StepLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: CustomAppBar(
          icon: Icons.clear,
          bgColor: CustomColors.background,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.only(top: 35.h, right: 20.w, left: 20.w, bottom: 20.h),
          child: Column(
            children: [
              CustomText(
                text: Constants.olx,
                color: CustomColors.textColor,
                textSize: 66.sp,
                weight: FontWeight.w700,
              ),
              SizedBox(height: 25.h),
              CustomText(
                text: Constants.welcome,
                color: CustomColors.textColor,
                textSize: 28.sp,
                weight: FontWeight.w500,
              ),
              SizedBox(height: 15.h),
              CustomText(
                text: Constants.intro,
                color: CustomColors.textColor,
                textSize: 20.sp,
                weight: FontWeight.w400,
              ),
              CustomText(
                text: Constants.seller,
                color: CustomColors.textColor,
                textSize: 20.sp,
                weight: FontWeight.w400,
              ),
              SizedBox(height: 25.h),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 55.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                            color: CustomColors.textColor, width: 1.w),
                        color: CustomColors.background,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 12.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/glogo.png',
                              height: 27.h,
                            ),
                            SizedBox(width: 10.w),
                            CustomText(
                              text: Constants.google,
                              color: CustomColors.textColor,
                              textSize: 18.sp,
                              weight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 55.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                              color: CustomColors.textColor, width: 1.w),
                          color: CustomColors.background,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 32.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/facebook.png',
                                height: 27.h,
                              ),
                              SizedBox(width: 10.w),
                              CustomText(
                                text: Constants.facebook,
                                color: CustomColors.textColor,
                                textSize: 18.sp,
                                weight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => EmailLogin()));
                      },
                      child: Container(
                        height: 55.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                              color: CustomColors.textColor, width: 1.w),
                          color: CustomColors.background,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.email_outlined),
                            SizedBox(width: 10.w),
                            CustomText(
                              text: Constants.email,
                              color: CustomColors.textColor,
                              textSize: 18.sp,
                              weight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PhoneLogin()));
                      },
                      child: Container(
                        height: 55.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                              color: CustomColors.textColor, width: 1.w),
                          color: CustomColors.background,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 7.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.phone_iphone_outlined),
                              SizedBox(width: 10.w),
                              CustomText(
                                text: Constants.phone,
                                color: CustomColors.textColor,
                                textSize: 18.sp,
                                weight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomText(
                text: Constants.accept,
                color: CustomColors.textColor,
                textSize: 16.sp,
                weight: FontWeight.w400,
              ),
              CustomText(
                text: Constants.conditions,
                color: CustomColors.textColor,
                textSize: 16.sp,
                weight: FontWeight.w400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
