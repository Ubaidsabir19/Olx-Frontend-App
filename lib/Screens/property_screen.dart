import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widgets/chip_text.dart';
import '../Widgets/custom_text.dart';
import '../Widgets/home_screen_app_bar.dart';
import '../Widgets/property_screen_grid.dart';
import '../Widgets/search_bar_1.dart';
import '../Widgets/search_button.dart';
import '../Widgets/text_field_2.dart';
import '../constants.dart';

class PropertyScreen extends StatefulWidget {
  PropertyScreen({Key? key}) : super(key: key);

  @override
  State<PropertyScreen> createState() => _PropertyScreenState();
}

class _PropertyScreenState extends State<PropertyScreen> {
  TextEditingController minController = TextEditingController();

  TextEditingController maxController = TextEditingController();

  TextEditingController searchController = TextEditingController();
  TextEditingController searchController1 = TextEditingController();

  var PriceRange = const RangeValues(0, 100000);

  String dropDownValue = 'Kanal';
  var items = [
    'Kanal',
    'Marla',
    'Square Feet',
    'Square Meter',
    'Square Yards',
  ];

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
            padding: EdgeInsets.only(left: 15.w, right: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchBar1(
                  icon: Icons.home_work_outlined,
                  hintText: Constants.landPlots,
                  controller: searchController1,
                ),
                SizedBox(height: 15.h),
                SearchBar1(
                  icon: Icons.search,
                  hintText: Constants.selectLocation,
                  controller: searchController,
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: Constants.areaRange,
                      color: CustomColors.textColor,
                      textSize: 12.sp,
                      weight: FontWeight.w400,
                    ),
                    DropdownButton(
                      elevation: 0,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: CustomColors.textColor,
                      ),
                      value: dropDownValue,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropDownValue = newValue!;
                        });
                      },
                      underline: Container(color: Colors.transparent),
                    ),
                  ],
                ),
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
                  bgColor: CustomColors.iconColor,
                  text: Constants.search,
                  onPressed: () {},
                  icon: Icons.search,
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.only(left: 5.w, right: 5.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: Constants.browseCategories,
                        color: CustomColors.textColor,
                        textSize: 18.sp,
                        weight: FontWeight.w400,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ChipText(
                            text: Constants.popular,
                            onPressed: () {},
                          ),
                          ChipText(
                            text: Constants.areaUnits,
                            onPressed: () {},
                          ),
                          ChipText(
                            text: Constants.categories,
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoriesGrid(
                            text1: 'Small',
                            text2: 'Houses',
                            onPressed: () {},
                          ),
                          CategoriesGrid(
                            text1: 'New',
                            text2: 'Houses',
                            onPressed: () {},
                          ),
                          CategoriesGrid(
                            text1: '1 Bedroom',
                            text2: 'Apartments',
                            onPressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoriesGrid(
                            text1: '2 Bedroom',
                            text2: 'Apartments',
                            onPressed: () {},
                          ),
                          CategoriesGrid(
                            text1: 'Installment',
                            text2: 'Houses',
                            onPressed: () {},
                          ),
                          CategoriesGrid(
                            text1: 'Installment',
                            text2: 'Apartments',
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
