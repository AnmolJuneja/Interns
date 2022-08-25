import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/consts/button.dart';
import 'package:sizer/consts/text_field.dart';
import 'package:sizer/views/home_page.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
      child: Column(children: [
        Container(
            height: 112.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/login_top_bg.png')))),
        Container(
          padding: EdgeInsets.only(top: 52.h, left: 36.w, right: 7.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Forgot Password',
                  style: GoogleFonts.inter(
                      fontSize: 23.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff242424))),
              SizedBox(height: 16.h),
              Text(
                  "Please enter your registered email address and you'll receive a link to reset your password.",
                  style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff9F9F9F))),
            ],
          ),
        ),
        Container(
            padding: EdgeInsets.only(top: 66.h, left: 36.w, right: 36.w),
            child: const TextField1(text: 'Email address', obsecure: false)),
        Padding(
          padding: EdgeInsets.only(
              top: 96.h, left: 36.w, bottom: 316.h, right: 36.w),
          child:  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xff242424)),
                      // ignore: sized_box_for_whitespace
                      onPressed: () {
                        Get.to(const HomePage());
                      },
                      child: Container(
                        height: 48.h,
                        width: 465.w,
                        padding: EdgeInsets.only(
                            top: 10.5.h,
                            bottom: 10.5.h),
                        child: Center(
                          child: Text('Submit',
                              style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xffF5F5F5))),
                        ),
                      )),
        )
      ]),
    )));
  }
}
