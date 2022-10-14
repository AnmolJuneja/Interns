import 'dart:ffi';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/models/catchlog_list.dart';
import 'package:reelpro/models/registration_step_two.dart';
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/view_models/otp_view_model.dart';
import 'package:reelpro/view_models/registeration.dart';
import 'package:reelpro/view_models/registeration_step_two.dart';
import 'package:reelpro/views/message_screen.dart';
import 'package:reelpro/views/splash_screen.dart';
import 'package:reelpro/views/user_profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    final registerationViewModel = Get.put(RegistrationStepTwo2());
    return Scaffold(
        backgroundColor: const Color(0xffF2F9FF),
        body: Stack(children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                padding: EdgeInsets.only(top: 64.h, left: 36.w),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Home',
                          style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 30.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xff2B67A3))),
                      SizedBox(height: 21.h),
                      Text('Good Morning,',
                          style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 16.sp,
                              color: const Color(0xff719AC3),
                              fontWeight: FontWeight.w400)),
                      SizedBox(height: 16.h),
                      Row(children: [
                        Obx(() => Text(registerationViewModel.firstName1.value,
                            style: GoogleFonts.bebasNeue(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.sp,
                                color: const Color(0xff719AC3)))),
                        SizedBox(width: 5.w),
                        Text(registerationViewModel.lastName1.value,
                            style: GoogleFonts.bebasNeue(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.sp,
                                color: const Color(0xff719AC3)))
                      ]),
                      SizedBox(width: 2.w),
                    ])),
            Container(
              padding: EdgeInsets.only(top: 24.h, left: 15.w),
              height: 420.h,
              width: 428.w,
              child: PageView.builder(
                  controller: pageController,
                  itemCount: 5,
                  itemBuilder: (context, index) => item(index)),
            )
          ]),
          Positioned(
              top: 120.h,
              right: 36.w,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const UserProfileUI());
                },
                child: Container(
                    height: 60.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/compo1.png')))),
              )),
          Positioned(
              top: 650.h,
              left: 36.w,
              child: Column(children: [
                Text(
                  'Upcoming events',
                  style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 21.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff2B67A3)),
                )
              ])),
          Positioned(
              top: 690.h,
              left: 36.w,
              child: Container(
                height: 111.h,
                width: 356.w,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.white),
                    // ignore: use_full_hex_values_for_flutter_colors
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xff2B67A329),
                          blurRadius: 1,
                          offset: Offset(0, 4))
                    ],
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/Group 8.png'))),
              )),
          Positioned(
              top: 755.h,
              left: 40.w,
              child: Image(
                image: const AssetImage('assets/images/fish.png'),
                height: 100.h,
                width: 100.w,
              )),
          Positioned(
              top: 810.h,
              left: 150.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Tuff Man Series',
                      style: TextStyle(
                          fontFamily: 'Helvetica',
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff485058))),
                  Text('Dallas, Texas',
                      style: TextStyle(
                          fontFamily: 'Helvetica',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff2B67A3)))
                ],
              )),
          Positioned(
              top: 663.h,
              left: 290.w,
              child:
                  const Image(image: AssetImage('assets/images/Group 6.png'))),
        ]));
  }

  item(int index) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.only(right: 15.w),
        padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 15.h),
        color: Colors.white,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Texas Fly Fishing & Brew Festival',
              style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff2B67A3))),
          SizedBox(height: 12.h),
          Row(
            children: [
              const Image(
                  image:
                      AssetImage('assets/images/Icon material-date-range.png')),
              SizedBox(width: 8.w),
              Text(
                'Wed, 12 January',
                style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                    color: const Color(0xff485058)),
              ),
              SizedBox(width: 40.w),
              const Image(image: AssetImage('assets/images/Subtraction 1.png')),
              SizedBox(width: 7.w),
              Text('9:00 AM',
                  style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff485058))),
            ],
          ),
          SizedBox(height: 9.5.h),
          Row(
            children: [
              const Image(
                  image: AssetImage('assets/images/Icon open-location.png')),
              SizedBox(width: 8.w),
              Text(
                '1700 Rodeo Dr, Mesquite, Tx, United States',
                style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff485058)),
              )
            ],
          ),
          SizedBox(height: 24.h),
          const Image(image: AssetImage('assets/images/Group 8.png'))
        ]),
      ),
      Positioned(
          top: 225.h,
          left: 40.w,
          child: Row(
            children: [
              Container(
                height: 30.h, width: 30.w,
                // ignore: use_full_hex_values_for_flutter_colors
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: const Color(0xff719AC3CC)),
                child: Center(
                    child: Text('12',
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: const Color(0xffF2F9FF),
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.bold))),
              ),
              SizedBox(width: 9.w),
              Text('Days',
                  style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 14.sp,
                      color: const Color(0xffF2F9FF),
                      fontWeight: FontWeight.bold)),
              SizedBox(width: 16.w),
              Container(
                height: 30.h, width: 30.w,
                // ignore: use_full_hex_values_for_flutter_colors
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: const Color(0xff719AC3CC)),
                child: Center(
                    child: Text('19',
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: const Color(0xffF2F9FF),
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.bold))),
              ),
              SizedBox(width: 9.w),
              Text('Hours',
                  style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 14.sp,
                      color: const Color(0xffF2F9FF),
                      fontWeight: FontWeight.bold))
            ],
          )),
      Positioned(
          top: 295.h,
          left: 36.w,
          child: Row(
            children: [
              Container(
                height: 44.h,
                width: 42.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: const Color(0xff2B67A3)),
                child: Center(
                    child: Text(
                  '41',
                  style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffF2F9FF)),
                )),
              ),
              SizedBox(width: 40.w),
              Container(
                height: 44.h,
                width: 42.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: const Color(0xff2B67A3)),
                child: Center(
                    child: Text(
                  '82',
                  style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffF2F9FF)),
                )),
              ),
              SizedBox(width: 40.w),
              Container(
                height: 44.h,
                width: 42.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: const Color(0xff2B67A3)),
                child: Center(
                    child: Text(
                  '12',
                  style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffF2F9FF)),
                )),
              ),
              SizedBox(width: 42.w),
              Container(
                height: 44.h,
                width: 42.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: const Color(0xff2B67A3)),
                child: Center(
                    child: Text(
                  '0',
                  style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffF2F9FF)),
                )),
              )
            ],
          )),
      Positioned(
          top: 355.h,
          left: 37.w,
          child: Row(
            children: [
              Text(
                'Teams',
                style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff48505880)),
              ),
              SizedBox(width: 34.w),
              Text(
                'Anglers',
                style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff48505880)),
              ),
              SizedBox(width: 35.w),
              Text(
                'Logged',
                style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff48505880)),
              ),
              SizedBox(width: 41.w),
              Text(
                'New',
                style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff48505880)),
              )
            ],
          ))
    ]);
  }
}
