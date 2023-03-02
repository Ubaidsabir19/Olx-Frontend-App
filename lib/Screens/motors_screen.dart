import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widgets/motor_screen_list.dart';
import '../Widgets/chip_text.dart';
import '../Widgets/custom_text.dart';
import '../Widgets/home_screen_app_bar.dart';
import '../Widgets/search_bar.dart';
import '../Widgets/search_bar_1.dart';
import '../Widgets/search_button.dart';
import '../Widgets/text_field_2.dart';
import '../constants.dart';

class MotorsScreen extends StatefulWidget {
  MotorsScreen({Key? key}) : super(key: key);

  @override
  State<MotorsScreen> createState() => _MotorsScreenState();
}

class _MotorsScreenState extends State<MotorsScreen> {
  TextEditingController minController = TextEditingController();

  TextEditingController maxController = TextEditingController();

  TextEditingController searchController = TextEditingController();

  var PriceRange = const RangeValues(0, 100000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: const HomeScreenAppBar(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: Constants.findBest,
                  color: CustomColors.textColor,
                  textSize: 20.sp,
                  weight: FontWeight.w500,
                ),
                SizedBox(height: 15.h),
                CustomText(
                  text: Constants.selectCar,
                  color: CustomColors.textColor,
                  textSize: 12.sp,
                  weight: FontWeight.w400,
                ),
                SizedBox(height: 5.h),
                SearchBar1(
                  icon: Icons.search_rounded,
                  hintText: Constants.searchBy,
                  controller: searchController,
                ),
                SizedBox(height: 20.h),
                CustomText(
                  text: Constants.priceRange,
                  color: CustomColors.textColor,
                  textSize: 12.sp,
                  weight: FontWeight.w400,
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextField2(
                      icon: Icons.sell_outlined,
                      hintText: '${PriceRange.start}',
                      controller: minController,
                    ),
                    CustomText(
                      text: Constants.to,
                      color: CustomColors.textColor,
                      textSize: 18.sp,
                      weight: FontWeight.w400,
                    ),
                    CustomTextField2(
                      icon: Icons.sell_outlined,
                      hintText: '${PriceRange.end}',
                      controller: maxController,
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.only(left: 10.w, right: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: '${PriceRange.start}',
                        color: CustomColors.textColor,
                        textSize: 12.sp,
                        weight: FontWeight.w300,
                      ),
                      CustomText(
                        text: '${PriceRange.end}',
                        color: CustomColors.textColor,
                        textSize: 12.sp,
                        weight: FontWeight.w300,
                      ),
                    ],
                  ),
                ),
                RangeSlider(
                  min: 0,
                  max: 100000,
                  divisions: 100000,
                  activeColor: CustomColors.iconColor,
                  //labels: RangeLabels('${PriceRange.start}', '${PriceRange.end}'),
                  values: PriceRange,
                  onChanged: (RangeValues value) {
                    setState(() {
                      PriceRange = value;
                    });
                  },
                ),
                SearchButton(
                  bgColor: CustomColors.iconColor1,
                  text: Constants.search,
                  onPressed: () {},
                  icon: Icons.search,
                ),
                SizedBox(height: 10.h),
                Card(
                  elevation: 5.0,
                  color: CustomColors.background,
                  child: Container(
                    height: 150.h,
                    //width: 400.w,
                    child: const Center(
                      child: Image(
                        image: AssetImage(
                          'assets/car.jpg',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                CustomText(
                  text: Constants.browseCategories,
                  color: CustomColors.textColor,
                  textSize: 20.sp,
                  weight: FontWeight.w400,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ChipText(
                      text: Constants.make,
                      onPressed: () {},
                    ),
                    ChipText(
                      text: Constants.model,
                      onPressed: () {},
                    ),
                    ChipText(
                      text: Constants.city,
                      onPressed: () {},
                    ),
                    ChipText(
                      text: Constants.price,
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoriesChip(
                      text: Constants.bmw,
                      onPressed: () {},
                    ),
                    CategoriesChip(
                      text: Constants.audi,
                      onPressed: () {},
                    ),
                    CategoriesChip(
                      text: Constants.suzuki,
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoriesChip(
                      text: Constants.toyota,
                      onPressed: () {},
                    ),
                    CategoriesChip(
                      text: Constants.rolex,
                      onPressed: () {},
                    ),
                    CategoriesChip(
                      text: Constants.honda,
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
