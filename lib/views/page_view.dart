import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sizer/views/cabs_page.dart';
import 'package:sizer/views/login_page.dart';
import 'package:sizer/views/onboarding_page.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  PageController pageController = PageController(initialPage: 0);
  int index1 = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
            controller: pageController,
            onPageChanged: (int index) {
              setState(() {
                index1 = index;
              });
            },
            children: const [OnBoardingPage(), CabsPage()]),
        Positioned(
            top: 738.h,
            left: 36.w,
            child: DotsIndicator(
              dotsCount: 2,
              position: index1.toDouble(),
              decorator: DotsDecorator(
                size: const Size(16, 4),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                activeSize: const Size(32.0, 4.0),
                activeColor: const Color(0xffFF9800),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            )),
        Positioned(
            top: 714.h,
            left: 291.w,
            right: 36.w,
            child: GestureDetector(
              onTap: () {
                if (index1 == 0) {
                  pageController.nextPage(
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.ease);
                } else {
                  Get.to(const LoginPage());
                }
              },
              child: Container(
                height: 48.h,
                width: 48.w,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icons/Group 63.png'))),
              ),
            ))
      ],
    );
  }
}
