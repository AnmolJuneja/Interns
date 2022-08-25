import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
           Container(height: 504.h,
             decoration: const  BoxDecoration(image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/onboarding_1.png'))),
             ),
           
            Padding(
              padding: EdgeInsets.only(top: 34.h, left: 36.w, right: 30.w),
              child: Column(
                children: [
                  Text('Are you planning to visit Sydney, NSW, Australia.',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold, fontSize: 23.sp)),
                  SizedBox(height: 14.h),
                  Text(
                      'We guarantee a safe, reliable, professional, affordable, and comfortable experience inside of our top-notch vehicles.',
                      style: GoogleFonts.inter(
                          fontSize: 15.sp, color: const Color(0xff9F9F9F))),
                ]
              )
            )
          ],
        ),
      )
    );
  }
}
