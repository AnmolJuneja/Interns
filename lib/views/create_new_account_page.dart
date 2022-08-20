import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'First name',
                          hintStyle: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff9F9F9F)),
                          contentPadding: EdgeInsets.only(
                              top: 19.h,
                              left: 20.w,
                              bottom: 15.h,
                              right: 170.w),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)))),
                  SizedBox(height: 8.h),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'Last name',
                          hintStyle: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff9F9F9F)),
                          contentPadding: EdgeInsets.only(
                              top: 19.h,
                              left: 20.w,
                              bottom: 15.h,
                              right: 170.w),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)))),
                  SizedBox(height: 8.h),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'Email address',
                          hintStyle: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff9F9F9F)),
                          contentPadding: EdgeInsets.only(
                              top: 19.h,
                              left: 20.w,
                              bottom: 15.h,
                              right: 170.w),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)))),
                  SizedBox(height: 8.h),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'Mobile number',
                          hintStyle: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff9F9F9F)),
                          contentPadding: EdgeInsets.only(
                              top: 19.h,
                              left: 20.w,
                              bottom: 15.h,
                              right: 170.w),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)))),
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
              child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xff242424)),
                      // ignore: sized_box_for_whitespace
                      onPressed: () {},
                      child: Container(
                        height: 55.h,
                        width: 465.w,
                        padding: EdgeInsets.only(
                            top: 10.h,
                            left: 120.w,
                            bottom: 10.h,
                            right: 75.w),
                        child: Text('Register',
                            style: GoogleFonts.inter(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xffF5F5F5))),
                      )),
            ),
          ]),
        ));
  }
}
