import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/controllers/fetch_lat_lng.dart';
import 'package:reelpro/views/bottom_navigation_screens/tracker.dart';
import 'package:reelpro/views/bottom_navigation_screens/event_list.dart';
import 'package:reelpro/views/bottom_navigation_screens/message_screen.dart';
import 'package:reelpro/views/bottom_navigation_screens/spotlight_screen.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_page.dart';

class BottomNavigation extends StatefulWidget {
  int currentIndex = 2;
  BottomNavigation({Key? key, required this.currentIndex}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
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
      body: screens[widget.currentIndex],
      bottomNavigationBar: Container(
        height: 70.h,
        width: double.infinity,
        color: const Color(0xffF2F9FF),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          buildBottomBar('assets/images/tracker.svg', 0, 25.w),
          buildBottomBar('assets/images/wave2.svg', 1, 33.w),
          buildBottomBar('assets/images/home.svg', 2, 25.w),
          buildBottomBar('assets/images/location.svg', 3, 23.w),
          buildBottomBar('assets/images/message.svg', 4, 25.w)
        ]),
      ),
    );
  }

  Widget buildBottomBar(String image, int index, var size) {
    return GestureDetector(
        onTap: () {
          setState(() {
            widget.currentIndex = index;
          });
        },
        child: Padding(
            padding: EdgeInsets.only(
                left: 27.w, right: 27.w, bottom: Platform.isIOS ? 20.h : 0.h),
            child: SvgPicture.asset(image,
                width: size,
                color: index == widget.currentIndex
                    ? const Color(0xff2B67A3)
                    : Colors.grey)));
  }
}
