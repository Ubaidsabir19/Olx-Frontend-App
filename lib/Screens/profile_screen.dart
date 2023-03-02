import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:olx_app/Screens/edit_profile_screen.dart';
import 'package:olx_app/Widgets/custom_text.dart';
import 'package:olx_app/Widgets/setting_list_view.dart';
import 'package:olx_app/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: 30.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 55.r,
                  backgroundColor: CustomColors.background,
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/user.png',
                    ),
                  ),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: Constants.ali,
                          color: CustomColors.textColor,
                          textSize: 28.sp,
                          weight: FontWeight.w500,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => EditProfileScreen()));
                          },
                          child: CustomText(
                            text: Constants.viewAndEdit,
                            color: CustomColors.textColor,
                            textSize: 18.sp,
                            weight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 15.h),
            SettingLists(
              onPressed: () {},
              icon1: Icons.credit_card,
              text1: Constants.buyPackages,
              text2: Constants.packagesBilling,
              icon2: Icons.arrow_forward_ios_rounded,
            ),
            SettingLists(
              onPressed: () {},
              icon1: Icons.settings_outlined,
              text1: Constants.settings,
              text2: Constants.privacyLogout,
              icon2: Icons.arrow_forward_ios_rounded,
            ),
            SettingLists(
              onPressed: () {},
              icon1: Icons.help_outline_outlined,
              text1: Constants.helpCenter,
              text2: Constants.legalTerms,
              icon2: Icons.arrow_forward_ios_rounded,
            ),
          ],
        ),
      )),
    );
  }
}
