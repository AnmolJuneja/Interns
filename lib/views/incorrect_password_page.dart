import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/consts/button.dart';
import 'package:sizer/consts/text_field.dart';
import 'package:sizer/views/create_new_account_page.dart';

class IncorrectPasswordPage extends StatelessWidget {
  const IncorrectPasswordPage({Key? key}) : super(key: key);

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
          Column(children: [
            Container(
                padding: EdgeInsets.only(top: 52.h, left: 36.w, right: 94.w),
                child: Text('Login to your account',
                    style: GoogleFonts.inter(
                        fontSize: 23.sp, fontWeight: FontWeight.bold))),
            Container(
                padding: EdgeInsets.only(top: 16.h, left: 36.w, right: 20.w),
                child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                    style: GoogleFonts.inter(
                        fontSize: 15, color: const Color(0xff9F9F9F)))),
                        Container(padding: EdgeInsets.only(top: 53.h , bottom: 32.h , left: 36.w , right: 56.w),
                        child: Row(children: [
                          Text('Incorrect Password. ' , style: GoogleFonts.inter(fontSize: 14.sp , fontWeight: FontWeight.w500 )),
                          Flexible(
                            child: Text('Reset your password.', style: GoogleFonts.inter(
                              decoration: TextDecoration.underline,
                              fontSize: 14.sp , fontWeight: FontWeight.w500 ,
                             color: const Color(0xffFF9800))),
                          )
                        ],),
                        ),
            Padding(
                padding: EdgeInsets.only(top: 32.h, left: 36.w, right: 36.w),
                child: Column(children: [
                 const TextField1(text: 'Email address', obsecure:false),
                  SizedBox(height: 8.h),
                 const TextField1(text: 'Password', obsecure: true),
                  SizedBox(height: 40.h),
                   ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xff242424)),
                      // ignore: sized_box_for_whitespace
                      onPressed: () {
                        Get.to(const CreateNewAccount());
                      },
                      child: Container(
                        height: 48.h,
                        width: 465.w,
                        padding: EdgeInsets.only(
                            top: 10.5.h,
                            bottom: 10.5.h),
                        child: Center(
                          child: Text('Log In',
                              style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xffF5F5F5))),
                        ),
                      )),
                 Container(
                    padding:
                        EdgeInsets.only(top: 82.h, right: 72.w, left: 72.w),
                    child: Column(children: [
                      Text("Don't have an account?",
                          style: GoogleFonts.inter(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                      Text('Create new account.',
                          style: GoogleFonts.inter(
                              decoration: TextDecoration.underline,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xffFF9800)))
                    ]),
                  ),
                  
                ]))
          ]),
          Container(padding: EdgeInsets.only(top: 85.h , left: 45.w , right: 30.w , bottom: 70.h),
          child: Row(children: [
            Text('By logging in you are agree to ' , style: GoogleFonts.inter(fontSize: 12.sp , fontWeight: FontWeight.w500 , color: const Color(0xff9F9F9F))),
            Flexible(child: Text('Terms & conditions' , style: GoogleFonts.inter(fontSize: 12.sp , fontWeight: FontWeight.w500 , decoration: TextDecoration.underline),))
          ],),
          )
        ])));
  }
}
