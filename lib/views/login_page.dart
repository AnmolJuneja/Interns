import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/viewModels/text_view.dart';
import 'package:sizer/views/incorrect_password_page.dart';
import 'package:sizer/views/text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = TextEditingController();
  
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
  String? get _errorText {
    final text = controller.value.text;

    if (text.isEmpty) {
      return 'Can\'t be empty';
    }
    if (text.length < 4) {
      return 'Too short';
    }

    return null;
  }

  var text = '';

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
            Padding(
                padding: EdgeInsets.only(top: 66.h, left: 36.w, right: 36.w),
                child: Column(children: [
                  Form(
                      // controller: controller,

                      child: Column(
                    children: [
                      TextFormField(
                          // key: _formkey,
                          controller: controller,
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
                              errorText: _errorText,
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white))),
                          // validator: (value) {},
                          onChanged: (text) => setState(() => text)),
                      SizedBox(height: 8.h),
                      const Textff()
                    ],
                  )),
                  SizedBox(height: 40.h),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff242424)),
                    // ignore: sized_box_for_whitespace
                    onPressed: () {
                      if (_errorText == null) {
                        Get.to(const IncorrectPasswordPage());
                      }
                    },
                    child: Container(
                      height: 48.h,
                      width: 303.w,
                      padding: EdgeInsets.only(
                        top: 10.5.h,
                        bottom: 10.5.h,
                      ),
                      child: Center(
                        child: Text('Log In',
                            style: GoogleFonts.inter(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xffF5F5F5))),
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(top: 115.h, right: 72.w, left: 72.w),
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
                ])),
            Container(
              padding: EdgeInsets.only(
                  top: 85.h, left: 45.w, right: 30.w, bottom: 70.h),
              child: Row(
                children: [
                  Text('By logging in you are agree to ',
                      style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff9F9F9F))),
                  Flexible(
                      child: Text(
                    'Terms & conditions',
                    style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline),
                  ))
                ],
              ),
            )
          ])
        ])));
  }
}
