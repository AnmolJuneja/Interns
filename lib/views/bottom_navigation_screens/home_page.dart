import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reelpro/controllers/registeration_controllers.dart';
import 'package:reelpro/models/event_order_list.dart';
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/view_models/event_network_request/event_order_list.dart';
import 'package:reelpro/view_models/register_user_request/otp_view_model.dart';
// import 'package:reelpro/view_models/register_user_request/registeration_step_two.dart';
import 'package:reelpro/views/registeration_screens/splash_screen.dart';
import 'package:reelpro/views/family_and_profile_screens/user_profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    RegistrationStepTwo2().navigateToOnboarding();
  }
  PageController pageController = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
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
                      Text(RegistrationStepTwo2().greetings!,
                          style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 16.sp,
                              color: const Color(0xff719AC3),
                              fontWeight: FontWeight.w400)),
                      SizedBox(height: 16.h),
                      Obx(() => Row(children: [
                            Text(RegistrationStepTwo2().firstName1.value,
                                style: GoogleFonts.bebasNeue(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.sp,
                                    color: const Color(0xff719AC3))),
                            SizedBox(width: 5.w),
                            Text(RegistrationStepTwo2().lastName1.value,
                                style: GoogleFonts.bebasNeue(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.sp,
                                    color: const Color(0xff719AC3)))
                          ])),
                      Container(
                        padding: EdgeInsets.only(top: 80.h, left: 120.w),
                        child: const Text('No Event Running'),
                      )
                    ])),
          ]),
          Positioned(
              top: 120.h,
              right: 36.w,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const UserProfileUI());
                },
                child: Obx(() => Container(
                      height: 60.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(width: 2, color: Colors.white),
                          image: RegistrationStepTwo2().profilePic1.value == ''
                              ? const DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/images/profile.png'))
                              : DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      RegistrationStepTwo2().profilePic1.value))),
                    )),
              )),
          Positioned(
              top: 400.h,
              left: 36.w,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Upcoming events',
                        style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: 21.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff2B67A3))),
                    FutureBuilder(
                        future: EventOrderListApi().getOrderList(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Container(
                              padding: EdgeInsets.only(top: 80.h, left: 120.w),
                              child: const Text('No Upcoming Events'),
                            );
                          } else {
                            return Container(
                              padding: EdgeInsets.only(top: 80.h, left: 150.w),
                              child: const CircularProgressIndicator(),
                            );
                          }
                        })
                  ]))
        ]));
  }
}
