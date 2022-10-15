import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/models/add_feed.dart';
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/view_models/fetch_lat_lng.dart';
import 'package:reelpro/views/add_catch_log.dart';
import 'package:reelpro/views/catch_details.dart';
import 'package:reelpro/views/catchlog_list.dart';
import 'package:reelpro/views/event_list.dart';
import 'package:reelpro/views/home_screen.dart';
import 'package:reelpro/views/message_screen.dart';
import 'package:reelpro/views/spotlight_screen.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final fetchLatLng = Get.put(FetchLatLng());
  int currentIndex = 2;
  List screens = [
    const CatchlogListUI(),
    const SpotlightScreen(),
    const HomePage(),
    const EventListUI(),
    const MessageScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        height: 60.h,
        width: double.infinity,
        color: const Color(0xffF2F9FF),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          buildBottomBar('assets/images/tracker.svg', 0),
          buildBottomBar('assets/images/realspotlight.svg', 1),
          buildBottomBar('assets/images/home.svg', 2),
          buildBottomBar('assets/images/location.svg', 3),
          buildBottomBar('assets/images/message.svg', 4)
        ]),
      ),
    );
  }

  Widget buildBottomBar(
    String image,
    int index,
  ) {
    return GestureDetector(
        onTap: () {
          setState(() {
            currentIndex = index;
          });
        },
        child: Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w),
            child: SvgPicture.asset(image,
                color: index == currentIndex
                    ? const Color(0xff2B67A3)
                    : Colors.grey)));
  }
}
