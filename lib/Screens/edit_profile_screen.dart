import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:olx_app/Widgets/custom_text.dart';
import 'package:olx_app/Widgets/elevated_button_1.dart';
import 'package:olx_app/constants.dart';

import '../Widgets/elevated_button.dart';
import '../Widgets/icon_button.dart';
import '../Widgets/text_field.dart';
import '../Widgets/text_field_1.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();
  TextEditingController aboutYouController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController genderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: CustomColors.background,
        elevation: 0.0,
        leading: CustomIconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: CustomColors.textColor,
          icon: Icons.clear,
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: CustomText(
              text: Constants.save,
              color: CustomColors.textColor,
              textSize: 18.sp,
              weight: FontWeight.w500,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: Constants.basicInformation,
                  color: CustomColors.textColor,
                  textSize: 26.sp,
                  weight: FontWeight.w500,
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 50.r,
                      child: Icon(
                        Icons.person,
                        size: 40.sp,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: Constants.basicInformation,
                          color: CustomColors.textColor,
                          textSize: 14.sp,
                          weight: FontWeight.w300,
                        ),
                        SizedBox(height: 5.h),
                        Container(
                          width: 250.w,
                          child: Center(
                            child: TextFormField(
                              autocorrect: true,
                              controller: nameController,
                              decoration: const InputDecoration(
                                // border: InputBorder.none,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.green, width: 1.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 1.0),
                                ),
                                hintText: Constants.name,
                                hintStyle: TextStyle(
                                  color: CustomColors.textColor,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 25.h),
                CustomText(
                  text: Constants.basicInformation,
                  color: CustomColors.textColor,
                  textSize: 14.sp,
                  weight: FontWeight.w300,
                ),
                SizedBox(height: 5.h),
                CustomTextField1(
                  hintText: ' ',
                  controller: aboutYouController,
                ),
                SizedBox(height: 25.h),
                CustomText(
                  text: Constants.basicInformation,
                  color: CustomColors.textColor,
                  textSize: 14.sp,
                  weight: FontWeight.w300,
                ),
                SizedBox(height: 5.h),
                CustomTextField1(
                  icon: Icons.arrow_drop_down_outlined,
                  hintText: Constants.selectGender,
                  controller: genderController,
                ),
                SizedBox(height: 50.h),
                Container(
                  height: 1.h,
                  color: CustomColors.textColor,
                ),
                SizedBox(height: 25.h),
                CustomText(
                  text: Constants.contactInformation,
                  color: CustomColors.textColor,
                  textSize: 26.sp,
                  weight: FontWeight.w500,
                ),
                SizedBox(height: 30.h),
                CustomText(
                  text: Constants.phoneNumber,
                  color: CustomColors.textColor,
                  textSize: 14.sp,
                  weight: FontWeight.w300,
                ),
                SizedBox(height: 5.h),
                CustomTextField(
                  icon: Icons.flag,
                  hintText: Constants.pNo,
                  controller: mobileController,
                ),
                SizedBox(height: 5.h),
                CustomText(
                  text: Constants.numberBuyers,
                  color: CustomColors.textColor,
                  textSize: 14.sp,
                  weight: FontWeight.w300,
                ),
                SizedBox(height: 15.h),
                CustomText(
                  text: Constants.email1,
                  color: CustomColors.textColor,
                  textSize: 14.sp,
                  weight: FontWeight.w300,
                ),
                SizedBox(height: 5.h),
                CustomTextField1(
                  hintText: Constants.mail,
                  controller: emailController,
                ),
                SizedBox(height: 5.h),
                CustomText(
                  text: Constants.emailTouch,
                  color: CustomColors.textColor,
                  textSize: 14.sp,
                  weight: FontWeight.w300,
                ),
                SizedBox(height: 50.h),
                Container(
                  height: 1.h,
                  color: CustomColors.textColor,
                ),
                SizedBox(height: 25.h),
                CustomText(
                  text: Constants.optionalInformation,
                  color: CustomColors.textColor,
                  textSize: 26.sp,
                  weight: FontWeight.w500,
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: CustomText(
                    text: Constants.facebook1,
                    color: CustomColors.textColor,
                    textSize: 14.sp,
                    weight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5.h),
                CustomElevatedButton(
                  bgColor: CustomColors.background,
                  text: Constants.connect,
                  onPressed: () {},
                ),
                SizedBox(height: 5.h),
                Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: CustomText(
                    text: Constants.signInFacebook,
                    color: CustomColors.textColor,
                    textSize: 14.sp,
                    weight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: CustomText(
                    text: Constants.google1,
                    color: CustomColors.textColor,
                    textSize: 14.sp,
                    weight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5.h),
                CustomElevatedButton(
                  bgColor: CustomColors.background,
                  text: Constants.connect,
                  onPressed: () {},
                ),
                SizedBox(height: 5.h),
                Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: CustomText(
                    text: Constants.connectOLX,
                    color: CustomColors.textColor,
                    textSize: 14.sp,
                    weight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 50.h),
                Container(
                  height: 1.h,
                  color: CustomColors.textColor,
                ),
                SizedBox(height: 25.h),
                CustomText(
                  text: Constants.delete,
                  color: CustomColors.textColor,
                  textSize: 26.sp,
                  weight: FontWeight.w500,
                ),
                SizedBox(height: 25.h),
                Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: CustomText(
                    text: Constants.deleteSure,
                    color: CustomColors.textColor,
                    textSize: 16.sp,
                    weight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5.h),
                CustomElevatedButton(
                  bgColor: CustomColors.background,
                  text: Constants.connect,
                  onPressed: () {},
                ),
                SizedBox(height: 5.h),
                Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: CustomElevatedButton1(
                    onPressed: () {},
                    child: CustomText(
                      text: Constants.seeMoreInfo,
                      color: CustomColors.textColor,
                      textSize: 16.sp,
                      weight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
