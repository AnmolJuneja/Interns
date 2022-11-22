import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/container.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/views/bottom_navigation_screens/bottom_navigation.dart';
import 'package:reelpro/views/event_screens/crew_and_contacts.dart';
import 'package:reelpro/views/event_screens/disclaimers.dart';
import 'package:reelpro/views/event_screens/event_rules.dart';
import 'package:reelpro/views/event_screens/event_weather.dart';
import 'package:reelpro/views/event_screens/gallery.dart';
import 'package:reelpro/views/event_screens/leaderboard.dart';
import 'package:get/get.dart';
import 'package:reelpro/views/event_screens/target_species.dart';
import 'package:reelpro/views/event_screens/teams_anglers.dart';

class EventDetailsConst extends StatelessWidget {
  DecorationImage? image;
  String text15;
  String text2;
  String text16;
  String text18;
  String text17;
  EventDetailsConst(
      {Key? key,
      required this.image,
      required this.text15,
      required this.text16,
      required this.text17,
      required this.text18,
      required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250.h,
          width: 428.w,
          decoration: BoxDecoration(image: image),
        ),
        Positioned(
            top: 208.h,
            left: 36.w,
            // right: 36.w,
            child: Row(
              children: [
                Container(
                  height: 26.h,
                  width: 26.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color(0xff719AC3)),
                  child: Center(child: Text16HMedium(text: text15)),
                ),
                SizedBox(width: 9.w),
                Text16HMedium(text: text2),
                SizedBox(width: 16.w),
                Container(
                  height: 26.h,
                  width: 26.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color(0xff719AC3)),
                  child: Center(child: Text16HMedium(text: text16)),
                ),
                SizedBox(width: 5.w),
                Text16HMedium(text: text17),
                SizedBox(width: 111.w),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color(0xff719AC3)),
                  child: Center(child: Text16HMedium(text: text18)),
                ),
              ],
            )),
      ],
    );
  }
}

class EventDetailsConst1 extends StatelessWidget {
  String text15;
  String text2;
  String text16;
  String text18;
  String text17;
  DecorationImage? image;
  EventDetailsConst1(
      {Key? key,
      required this.image,
      required this.text15,
      required this.text16,
      required this.text17,
      required this.text18,
      required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 180.h,
          width: 428.w,
          decoration: BoxDecoration(color: Colors.white, image: image),
        ),
        Positioned(
            top: 208.h,
            left: 36.w,
            // right: 36.w,
            child: Row(
              children: [
                Container(
                  height: 26.h,
                  width: 26.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color(0xff719AC3)),
                  child: Center(child: Text16HMedium(text: text15)),
                ),
                SizedBox(width: 9.w),
                Text16HMedium(text: text2),
                SizedBox(width: 16.w),
                Container(
                  height: 26.h,
                  width: 26.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color(0xff719AC3)),
                  child: Center(child: Text16HMedium(text: text16)),
                ),
                SizedBox(width: 5.w),
                Text16HMedium(text: text17),
                SizedBox(width: 111.w),
                Container(
                  height: 24.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color(0xff719AC3)),
                  child: Center(child: Text16HMedium(text: text18)),
                ),
              ],
            )),
      ],
    );
  }
}

class EventDetailsRow extends StatelessWidget {
  String image;
  String text;
  String image1;
  String text1;
  String image2;
  String text2;
  String text4;
  String text5;
  String text6;
  String imagetime;
  String imagedate;
  String text8;
  String text7;
  String text9;
  String text12;
  String text11;
  String text10;
  String text13;
  EventDetailsRow(
      {Key? key,
      required this.image,
      required this.text,
      required this.image1,
      required this.text1,
      required this.image2,
      required this.text2,
      required this.text10,
      required this.text5,
      required this.text9,
      required this.text6,
      required this.imagedate,
      required this.imagetime,
      required this.text8,
      required this.text7,
      required this.text11,
      required this.text12,
      required this.text13,
      required this.text4})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 27.h, left: 36.w, right: 36.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(
                children: [
                  Image(image: AssetImage(image)),
                  SizedBox(width: 8.w),
                  Text16Pt(text: text),
                ],
              ),
              Row(children: [
                Image(image: AssetImage(image1)),
                SizedBox(width: 5.w),
                Text14PtBlue(text: text1)
              ])
            ]),
            SizedBox(height: 28.h),
            Row(
              children: [
                Image(image: AssetImage(image2)),
                SizedBox(width: 8.w),
                Text16Pt(text: '$text2-'),
                Text16Pt(text: text4),
                Text(
                  text5,
                  style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: const Color(0xff485058)),
                )
              ],
            ),
            SizedBox(height: 30.h),
            Text14ptSilver(text: text6),
            SizedBox(height: 8.h),
            Row(
              children: [
                Image(image: AssetImage(imagedate)),
                SizedBox(width: 8.w),
                Text16Pt(text: text7),
                SizedBox(width: 10.w),
                Image(image: AssetImage(imagetime)),
                SizedBox(width: 8.w),
                Text16Pt(text: text8)
              ],
            ),
            SizedBox(height: 15.h),
            Text14ptSilver(text: text9),
            SizedBox(height: 8.h),
            Row(
              children: [
                Image(image: AssetImage(imagedate)),
                SizedBox(width: 8.w),
                Text16Pt(text: text7),
                SizedBox(width: 10.w),
                Image(image: AssetImage(imagetime)),
                SizedBox(width: 8.w),
                Text16Pt(text: text10)
              ],
            ),
            SizedBox(height: 31.h),
            Text14ptSilver(text: text11),
            SizedBox(height: 10.h),
            SizedBox(
                height: 78.h,
                width: 356.w,
                child: Text14ptDesc(
                  text: text12,
                )),
            SizedBox(height: 5.h),
            Text14PtBlue(text: text13),
            SizedBox(height: 29.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => const TargetSpeciesUI());
                  },
                  child: Button85h(
                    onpressed: () {},
                    text: '',
                    number: '05',
                    text1: 'Target Species',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const TeamsAnglersUI());
                  },
                  child: Button85h(
                    onpressed: () {},
                    text: '',
                    number: '28',
                    text1: 'Anglers',
                  ),
                )
              ],
            ),
            SizedBox(height: 20.h),
            const Divider(
              thickness: 1,
            ),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () {
                Get.to(() => BottomNavigation(currentIndex: 4));
              },
              child: EventDetailsConst132(
                  image: 'assets/images/megaphone.png', text: 'Announcements'),
            ),
            SizedBox(height: 20.h),
            const Divider(thickness: 1),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () {
                Get.to(() => const EventWeather());
              },
              child: EventDetailsConst132(
                  image: 'assets/images/cloud.png', text: 'Weather'),
            ),
            SizedBox(height: 20.h),
            const Divider(thickness: 1),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () {
                Get.to(() => const EventRulesUI());
              },
              child: EventDetailsConst132(
                  image: 'assets/images/Note.png', text: 'Rules'),
            ),
            SizedBox(height: 20.h),
            const Divider(thickness: 1),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () {
                Get.to(() => const EventDisclaimers());
              },
              child: EventDetailsConst132(
                  image: 'assets/images/warning.png', text: 'Disclaimers'),
            ),
            SizedBox(height: 20.h),
            const Divider(thickness: 1),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () {
                Get.to(() => const CrewAndContactsUI());
              },
              child: EventDetailsConst132(
                  image: 'assets/images/contacts.png',
                  text: 'Crew and Contacts'),
            ),
            SizedBox(height: 20.h),
            const Divider(thickness: 1),
            SizedBox(height: 35.h),
            const SponserContainer()
          ],
        ));
  }
}

class EventDetailsRow1 extends StatelessWidget {
  String image;
  String text;
  String image1;
  String text1;
  String image2;

  String text6;
  String imagetime;
  String imagedate;
  String text8;
  String text7;
  String text9;

  String text10;
  EventDetailsRow1({
    Key? key,
    required this.image,
    required this.text,
    required this.image1,
    required this.text1,
    required this.image2,
    // required this.text2,
    required this.text10,
    // required this.text5,
    required this.text9,
    required this.text6,
    required this.imagedate,
    required this.imagetime,
    required this.text8,
    required this.text7,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 27.h, left: 36.w, right: 36.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(
                children: [
                  Image(image: AssetImage(image)),
                  SizedBox(width: 8.w),
                  Text16Pt(text: text),
                ],
              ),
              Row(children: [
                Image(image: AssetImage(image1)),
                SizedBox(width: 5.w),
                Text14PtBlue(text: text1)
              ])
            ]),
            SizedBox(height: 33.h),
            Text14ptSilver(text: text6),
            SizedBox(height: 8.h),
            Row(
              children: [
                Image(image: AssetImage(imagedate)),
                SizedBox(width: 8.w),
                Text16Pt(text: text7),
                SizedBox(width: 10.w),
                Image(image: AssetImage(imagetime)),
                SizedBox(width: 8.w),
                Text16Pt(text: text8)
              ],
            ),
            SizedBox(height: 15.h),
            Text14ptSilver(text: text9),
            SizedBox(height: 8.h),
            Row(
              children: [
                Image(image: AssetImage(imagedate)),
                SizedBox(width: 8.w),
                Text16Pt(text: text7),
                SizedBox(width: 10.w),
                Image(image: AssetImage(imagetime)),
                SizedBox(width: 8.w),
                Text16Pt(text: text10)
              ],
            ),
            SizedBox(height: 41.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => const TargetSpeciesUI());
                  },
                  child: Button85h(
                    onpressed: () {},
                    text: '',
                    number: '05',
                    text1: 'Target Species',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const LeaderBoardUI());
                  },
                  child: Button85h1(
                    onpressed: () {},
                    image: 'assets/images/trophy.png',
                  ),
                )
              ],
            ),
            SizedBox(height: 30.h),
            Text16PtBlack(text: 'Gallery'),
            SizedBox(height: 15.h),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                height: 170.h,
                width: 170.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/y3.png'))),
              ),
              SizedBox(width: 14.w),
              GestureDetector(
                onTap: () {
                  Get.to(() => const GalleryUI());
                },
                child: Container(
                  height: 170.h,
                  width: 170.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.white, BlendMode.colorBurn),
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/y3.png'))),
                  child: const Center(
                    child: Text(
                      '+25',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
              ),
            ]),
            SizedBox(height: 20.h),
            const Divider(
              thickness: 1,
            ),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () {
                Get.to(() => BottomNavigation(currentIndex: 4));
              },
              child: EventDetailsConst132(
                  image: 'assets/images/megaphone.png', text: 'Announcements'),
            ),
            SizedBox(height: 20.h),
            const Divider(thickness: 1),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () {
                Get.to(() => const EventWeather());
              },
              child: EventDetailsConst132(
                  image: 'assets/images/cloud.png', text: 'Weather'),
            ),
            SizedBox(height: 20.h),
            const Divider(thickness: 1),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () {
                Get.to(() => const EventRulesUI());
              },
              child: EventDetailsConst132(
                  image: 'assets/images/Note.png', text: 'Rules'),
            ),
            SizedBox(height: 20.h),
            const Divider(thickness: 1),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () {
                Get.to(() => const EventDisclaimers());
              },
              child: EventDetailsConst132(
                  image: 'assets/images/warning.png', text: 'Disclaimers'),
            ),
            SizedBox(height: 20.h),
            const Divider(thickness: 1),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () {
                Get.to(() => const CrewAndContactsUI());
              },
              child: EventDetailsConst132(
                  image: 'assets/images/contacts.png',
                  text: 'Crew and Contacts'),
            ),
            SizedBox(height: 20.h),
            const Divider(thickness: 1),
            SizedBox(height: 35.h),
            const SponserContainer(),
            SizedBox(height: 30.h)
          ],
        ));
  }
}
