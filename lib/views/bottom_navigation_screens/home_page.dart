import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/controllers/registeration_controllers.dart';
import 'package:reelpro/view_models/event_network_request/event_order_list.dart';
import 'package:reelpro/views/family_and_profile_screens/user_profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController(viewportFraction: 0.9);
  final instance = Get.put(RegistrationStepTwo2());
  var greetings = '';
  @override
  void initState() {
    instance.navigateToOnboarding();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var dateTime = DateTime.now().hour;
    if (dateTime > 11.59 && dateTime < 16) {
      greetings = 'Good Afternoon';
    } else if (dateTime > 15.59 && dateTime < 24) {
      greetings = 'Good Evening';
    } else {
      greetings = 'Good Morning';
    }
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffF2F9FF),
          elevation: 0,
          leadingWidth: 140,
          leading: Padding(
              padding: EdgeInsets.only(left: 36.w, top: 28.h),
              child: Text30ptBlue(text: 'Home')),
        ),
        backgroundColor: const Color(0xffF2F9FF),
        body: Stack(children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                padding: EdgeInsets.only(left: 36.w, top: 21.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(greetings,
                          style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 16.sp,
                              color: const Color(0xff719AC3),
                              fontWeight: FontWeight.w400)),
                      Obx(() => Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(children: [
                                  Text(instance.firstName1.value,
                                      style: GoogleFonts.bebasNeue(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30.sp,
                                          color: const Color(0xff719AC3))),
                                  SizedBox(width: 5.w),
                                  Text(instance.lastName1.value,
                                      style: GoogleFonts.bebasNeue(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30.sp,
                                          color: const Color(0xff719AC3)))
                                ]),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 20.h, right: 36.w),
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.to(() => const UserProfileUI());
                                    },
                                    child: Obx(() => Container(
                                          height: 70.h,
                                          width: 60.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              border: Border.all(
                                                  width: 2,
                                                  color: Colors.white),
                                              image: instance
                                                          .profilePic1.value ==
                                                      ''
                                                  ? const DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                          'assets/images/profile.png'))
                                                  : DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: NetworkImage(
                                                          instance.profilePic1
                                                              .value))),
                                        )),
                                  ),
                                ),
                              ])),
                      Container(
                        padding: EdgeInsets.only(top: 80.h, left: 120.w),
                        child: Text('No Event Running'),
                      )
                    ])),
          ]),
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
