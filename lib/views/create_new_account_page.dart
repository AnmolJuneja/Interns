import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/consts/button.dart';
import 'package:sizer/consts/text_field.dart';
import 'package:sizer/views/info_fill_page.dart';

class CreateNewAccount extends StatelessWidget {
  const CreateNewAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 112.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/login_top_bg.png'))),
            ),
            Container(
                padding: EdgeInsets.only(top: 52.h, left: 36.w, right: 23.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Create a new account',
                        style: GoogleFonts.inter(
                            fontSize: 23.sp, fontWeight: FontWeight.bold)),
                    SizedBox(height: 16.h),
                    Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: GoogleFonts.inter(
                            fontSize: 15, color: const Color(0xff9F9F9F)))
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(top: 66.h, left: 33.w, right: 33.w),
                child: Column(children: [
                  const TextField1(text: 'First name', obsecure: false),
                  SizedBox(height: 8.h),
                  const TextField1(text: 'Last name', obsecure: false),
                  SizedBox(height: 8.h),
                  const TextField1(text: 'Email address', obsecure: false),
                  SizedBox(height: 8.h),
                 const TextField1(text: 'Mobile number', obsecure: false),
                ])),
            Padding(
              padding: EdgeInsets.only(top: 38.h, left: 36.w, right: 40.w),
              child: Row(
                children: [
                  Container(
                    height: 25.h,
                    width: 25.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                  ),
                  SizedBox(width: 12.w),
                  Text('By click you accept the ',
                      style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff9F9F9F))),
                  Expanded(
                    child: Text('Terms & conditions',
                        style: GoogleFonts.inter(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline)),
                  ),
                ],
              ),
            ),
           Padding(
              padding: EdgeInsets.only(
                  top: 40.h, left: 36.w, right: 36.w, bottom: 316.h),
              child:  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xff242424)),
                      // ignore: sized_box_for_whitespace
                      onPressed: () {
                        Get.to(const InfoFillPage());
                      },
                      child: Container(
                        height: 48.h,
                        width: 465.w,
                        padding: EdgeInsets.only(
                            top: 10.5.h,
                            bottom: 10.5.h),
                        child: Center(
                          child: Text('Register',
                              style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xffF5F5F5))),
                        ),
                      )),
            ),
          ]),
        ));
  }
}
