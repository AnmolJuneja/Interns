import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/consts/button.dart';
import 'package:sizer/views/create_password.dart';

class VerifyNumber extends StatelessWidget {
  const VerifyNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              padding: EdgeInsets.only(
                  left: 21.w, right: 303.w, top: 48.h, bottom: 26.h),
              height: 112.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/login_top_bg.png'))),
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/back_btn_white.png'))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 52.h, left: 36.w, right: 36.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Verify Your number',
                        style: GoogleFonts.inter(
                            fontSize: 23.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff242424))),
                    SizedBox(height: 13.h),
                    Text(
                      'Lorem Ipsum is +9190231487642 text of the printing.',
                      style: GoogleFonts.inter(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff9F9F9F)),
                    ),
                    SizedBox(height: 65.h),
                    Form(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 48.h,
                          width: 60.w,
                          child: TextField(
                            style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff9F9F9F)),
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 48.h,
                          width: 60.w,
                          child: TextField(
                            style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff9F9F9F)),
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 48.h,
                          width: 60.w,
                          child: TextField(
                            style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff9F9F9F)),
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 48.h,
                          width: 60.w,
                          child: TextField(
                            style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff9F9F9F)),
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        )
                      ],
                    )),
                    SizedBox(height: 40.h),
                      ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xff242424)),
                      // ignore: sized_box_for_whitespace
                      onPressed: () {
                        Get.to(const CreatePassword() );
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
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 171.h, left: 89.w, bottom: 167.h, right: 70.w),
              child: Column(
                children: [
                  Text(
                    "Didn't receive verification code?",
                    style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff242424)),
                  ),
                  Text('Resend Code.',
                      style: GoogleFonts.inter(
                          decoration: TextDecoration.underline,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffFF9800)))
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
