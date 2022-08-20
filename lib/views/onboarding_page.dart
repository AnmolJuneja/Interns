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
                Padding(
                      padding: EdgeInsets.only(bottom: 50, top: 56.h),
                      child: Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xffFF9800),
                              ),
                              height: 4.h,
                              width: 32.w),
                          SizedBox(width: 8.w),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xff9F9F9F),
                              ),
                              height: 4.h,
                              width: 16.w),
                          SizedBox(width: 199.w),
                         Flexible(
                           child: Container(height: 48.h, width: 48.w,
                           decoration: const  BoxDecoration(image: DecorationImage(
                            image: AssetImage('assets/icons/Group 63.png'))),
                           ),)
                         
                        ]
                      ),
                    )
                ]
              )
            )
          ],
        ),
      )
    );
  }
}
