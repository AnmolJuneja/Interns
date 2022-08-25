import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/consts/button.dart';
import 'package:sizer/consts/text_field.dart';
import 'package:sizer/views/forgot_password_page.dart';

class CreatePassword extends StatelessWidget {
  const CreatePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 112.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/login_top_bg.png'))),
            ),
            Padding(
                padding: EdgeInsets.only(top: 52.h, left: 36.w, right: 36.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create password',
                      style: GoogleFonts.inter(
                          fontSize: 23.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff242424)),
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      style: GoogleFonts.inter(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff9F9F9F)),
                    ),
                    SizedBox(height: 66.h),
                    const TextField1(text: 'Enter password', obsecure: true),
                    SizedBox(height: 8.h),
                    const TextField1(text: 'Confirm password', obsecure: true)
                  ],
                )),
            Padding(
              padding: EdgeInsets.only(
                  top: 40.h, left: 36.w, right: 36.w, bottom: 316.h),
              child:  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xff242424)),
                      // ignore: sized_box_for_whitespace
                      onPressed: () {
                        Get.to(const ForgotPassword() );
                      },
                      child: Container(
                        height: 48.h,
                        width: 465.w,
                        padding: EdgeInsets.only(
                            top: 10.5.h,
                            bottom: 10.5.h),
                        child: Center(
                          child: Text('Next',
                              style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xffF5F5F5))),
                        ),
                      )),
            ),
          ],
        ),
      ),
    ));
  }
}
