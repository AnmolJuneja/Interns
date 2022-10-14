import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/models/registration_step_two.dart';
import 'package:reelpro/view_models/edit_profile.dart';
import 'package:get/get.dart';
import 'package:reelpro/view_models/registeration_step_two.dart';
import 'package:reelpro/views/edit_profile.dart';

class UserProfileUI extends StatelessWidget {
  const UserProfileUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final instance = Get.put(RegistrationStepTwo2());
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              elevation: 0,
              toolbarHeight: 60.h,
              backgroundColor: Colors.white,
              flexibleSpace: Container(
                  padding: EdgeInsets.only(left: 36.w, right: 36.w, top: 60.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.arrow_back_ios),
                        Icon(Icons.settings_outlined)
                      ]))),
          body: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(top: 17.h, left: 36.w, right: 36.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(children: [
                      Container(
                          height: 135.h,
                          width: 132.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(width: 3, color: Colors.white),
                              image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/compo1.png')))),
                      SizedBox(width: 16.w),
                      Padding(
                        padding: EdgeInsets.only(top: 5.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text21PtBlack(
                                      text: instance.firstName1.value),
                                  SizedBox(width: 5.w),
                                  Text21PtBlack(text: instance.lastName1.value)
                                ],
                              ),
                              SizedBox(height: 5.h),
                              Text14ptOpacity50(text: 'Member Since Mar 2017'),
                              SizedBox(height: 22.h),
                              GestureDetector(
                                onTap: () {
                                  Get.to(() => EditProfile1());
                                },
                                child: Container(
                                  padding: EdgeInsets.only(left: 60.w),
                                  height: 36.h,
                                  width: 208.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      border: Border.all(
                                          width: 1,
                                          color: const Color(0xff485058))),
                                  child: Center(
                                    child: Row(children: [
                                      const Icon(
                                        Icons.edit_outlined,
                                        size: 14,
                                      ),
                                      SizedBox(width: 5.w),
                                      Text14ptDesc(text: 'Edit_Profile')
                                    ]),
                                  ),
                                ),
                              )
                            ]),
                      ),
                    ]),
                    SizedBox(height: 20.h),
                    Text14ptDesc(
                        text:
                            'This years Texas Fly Fishing & Brew Festival is held inside the spacious Mesquite Convention Center location.'),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 41.w, right: 41.w, top: 22.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text20PtBold(text: '159'),
                            Text20PtBold(text: '990'),
                            Text20PtBold(text: '258')
                          ]),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 6.h, left: 24.w, right: 25.w),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text14ptOpacity50(text: ' Rewards'),
                            Text14ptOpacity50(text: 'Followers'),
                            Text14ptOpacity50(text: 'Following')
                          ]),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Container(
                height: 830.h,
                padding: EdgeInsets.only(top: 15.h),
                width: double.infinity,
                color: const Color(0xffF2F9FF),
                child: Column(children: [
                  const TabBar(
                    indicatorWeight: 2.0,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.tab,
                    automaticIndicatorColorAdjustment: true,
                    // automaticIndicatorColorAdjustment: false,
                    indicatorColor: Color(0xff2B67A3),
                    labelColor: Color(0xff2B67A3),
                    // ignore: use_full_hex_values_for_flutter_colors
                    unselectedLabelColor: Color.fromARGB(255, 59, 63, 68),
                    tabs: [
                      Tab(text: 'My Feeds'),
                      Tab(text: 'Catchlog'),
                      Tab(text: 'Event History'),
                      Tab(text: 'Clubs & Associates'),
                      Tab(text: 'Equipments')
                    ],
                  ),
                  Flexible(
                      child: Container(
                          width: double.infinity,
                          height: 900.h,
                          child: TabBarView(children: [
                            SingleChildScrollView(
                              physics: NeverScrollableScrollPhysics(),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 20.h, left: 36.w, right: 36.w),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/images/compo1.png',
                                          height: 170.h,
                                          width: 170.w,
                                        ),
                                        Image.asset(
                                          'assets/images/compo1.png',
                                          height: 170.h,
                                          width: 170.w,
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 16.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/images/compo1.png',
                                          height: 170.h,
                                          width: 170.w,
                                        ),
                                        Image.asset(
                                          'assets/images/compo1.png',
                                          height: 170.h,
                                          width: 170.w,
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 16.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/images/compo1.png',
                                          height: 170.h,
                                          width: 170.w,
                                        ),
                                        Image.asset(
                                          'assets/images/compo1.png',
                                          height: 170.h,
                                          width: 170.w,
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 16.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/images/compo1.png',
                                          height: 170.h,
                                          width: 170.w,
                                        ),
                                        Image.asset(
                                          'assets/images/compo1.png',
                                          height: 170.h,
                                          width: 170.w,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Center(child: Text('No Data')),
                            Center(child: Text('No Data')),
                            Center(child: Text('No Data')),
                            Center(child: Text('No Data'))
                          ])))
                ]),
              )
            ]),
          )),
    );
  }
}
