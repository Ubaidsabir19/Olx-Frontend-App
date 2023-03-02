import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:olx_app/Screens/location_screen.dart';
import 'package:olx_app/constants.dart';

import '../Services/json.dart';
import '../Services/json.dart';
import '../Services/json.dart';
import '../Widgets/circle_avater.dart';
import '../Widgets/custom_text.dart';
import '../Widgets/elevated_button_1.dart';
import '../Widgets/home_screen_app_bar.dart';
import '../Widgets/search_bar.dart';
import 'notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BrandData? _items;

  readJson() async {
    final String response = await rootBundle.loadString('assets/user.json');
    final data = await json.decode(response);
    setState(() {
      _items = BrandData.fromJson(data);
    });

    print(_items!.toJson());
  }

  @override
  void initState() {
    readJson();
    super.initState();
  }

  String dropDownValue = 'Lahore';
  var items = [
    'Lahore',
    'Islamabad',
    'Karachi',
    'Faisalabad',
    'Rawalpindi',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: const HomeScreenAppBar(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 6.w, right: 6.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on_outlined,
                                color: CustomColors.iconColor,
                              ),
                              SizedBox(width: 5.w),
                              DropdownButton(
                                elevation: 0,
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
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          NotificationScreen()));
                                },
                                icon: const Icon(
                                  Icons.notifications_none,
                                  color: CustomColors.iconColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SearchBar(
                        icon: Icons.search_rounded,
                        hintText: Constants.searchHint,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  height: 185.h,
                  color: CustomColors.backgroundColor,
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(left: 12.w, right: 12.w, top: 5.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: Constants.bestCategories,
                              color: CustomColors.textColor,
                              textSize: 22.sp,
                              weight: FontWeight.w400,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: CustomText(
                                text: Constants.seeAll,
                                color: CustomColors.textColor,
                                textSize: 16.sp,
                                weight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Padding(
                        padding: EdgeInsets.only(left: 10.w, right: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomCircleAvatar(
                              color: CustomColors.iconColor,
                              icon: Icons.phone_iphone_outlined,
                              text: Constants.mobiles,
                              weight: FontWeight.w400,
                              onPressed: () {},
                            ),
                            CustomCircleAvatar(
                              color: CustomColors.iconColor1,
                              icon: Icons.car_rental_sharp,
                              text: Constants.vehicles,
                              weight: FontWeight.w400,
                              onPressed: () {},
                            ),
                            CustomCircleAvatar(
                              color: CustomColors.iconColor,
                              icon: Icons.sell_outlined,
                              text: Constants.property1,
                              weight: FontWeight.w400,
                              onPressed: () {},
                            ),
                            CustomCircleAvatar(
                              color: CustomColors.iconColor1,
                              icon: Icons.real_estate_agent_outlined,
                              text: Constants.property2,
                              weight: FontWeight.w400,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.h),
                Padding(
                  padding: EdgeInsets.only(left: 5.w, right: 5.w),
                  child: Container(
                    height: 1680.h,
                    child: _items != null
                        ? GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 2,
                              childAspectRatio: 0.72,
                            ),
                            itemCount: _items!.brand!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return GridTile(
                                child: Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 2.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Container(
                                            height: 145.h,
                                            width: 190.w,
                                            decoration: BoxDecoration(
                                              color: CustomColors.background,
                                              borderRadius:
                                                  BorderRadius.circular(10.r),
                                            ),
                                            child: Image.asset(
                                              'assets/bg.png',
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 10.w, right: 2.w),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomText(
                                                    text: _items!
                                                        .brand![index].name!
                                                        .toString(),
                                                    color:
                                                        CustomColors.textColor,
                                                    weight: FontWeight.w500,
                                                    textSize: 16.sp,
                                                  ),
                                                  CustomText(
                                                    text: _items!.brand![index]
                                                        .price![0].range
                                                        .toString(),
                                                    color:
                                                        CustomColors.textColor,
                                                    textSize: 16.sp,
                                                    weight: FontWeight.w500,
                                                  ),
                                                ],
                                              ),
                                              IconButton(
                                                icon:
                                                    _items!.brand![index].toggle
                                                        ? const Icon(
                                                            Icons.favorite,
                                                            color: CustomColors
                                                                .iconColor,
                                                          )
                                                        : const Icon(
                                                            Icons
                                                                .favorite_border_rounded,
                                                            color: CustomColors
                                                                .iconColor,
                                                          ),
                                                onPressed: () {
                                                  _items!.brand![index].toggle =
                                                      _items!
                                                          .brand![index].toggle;
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          )
                        : const CircularProgressIndicator(),
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
