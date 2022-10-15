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
import 'package:reelpro/view_models/event_order_list.dart';
import 'package:reelpro/view_models/otp_view_model.dart';
import 'package:reelpro/view_models/registeration.dart';
import 'package:reelpro/view_models/registeration_step_two.dart';
import 'package:reelpro/views/message_screen.dart';
import 'package:reelpro/views/splash_screen.dart';
import 'package:reelpro/views/user_profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    var greetings;
    var dateTime = DateTime.now().hour;
    if (dateTime > 12 && dateTime < 16) {
      greetings = 'Good Afternoon';
    } else if (dateTime > 16 && dateTime < 24) {
      greetings = 'Good Evening';
    } else {
      greetings = 'Good Morning';
    }
    final registerationViewModel = Get.put(RegistrationStepTwo2());
    final eventOrderListApi = Get.put(EventOrderListApi());
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
                      Text(greetings,
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
                      FutureBuilder(
                          future: eventOrderListApi.getOrderList(),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return Container(
                                padding:
                                    EdgeInsets.only(top: 80.h, left: 120.w),
                                child: Text('No Event Running'),
                              );
                            } else {
                              return Container(
                                  padding:
                                      EdgeInsets.only(top: 60.h, left: 150.w),
                                  child: CircularProgressIndicator());
                            }
                          })
                    ])),
          ]),
          Positioned(
              top: 120.h,
              right: 36.w,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const UserProfileUI());
                },
                child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/profile.png')))),
              )),
          Positioned(
              top: 400.h,
              left: 36.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(
                'Upcoming events',
                style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 21.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff2B67A3))),
                    FutureBuilder(
                      future: eventOrderListApi.getOrderList(),
                      builder: (context, snapshot){
                      if(snapshot.hasData){
                        return Container(
                                padding:
                                    EdgeInsets.only(top: 80.h, left: 120.w),
                                child: Text('No Upcoming Events'),
                              );
                      }else{
                        return Container(
                                padding:
                                    EdgeInsets.only(top: 80.h, left: 150.w),
                                child: CircularProgressIndicator(),
                              );
                      }
                    })
              ]))
        ]));
  }
}
