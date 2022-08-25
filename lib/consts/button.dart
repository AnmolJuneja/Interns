// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/views/incorrect_password_page.dart';

class Button extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;
  double buttonSize;
  Button({
    Key? key,
    required this.text,
    this.buttonColor = const Color(0xff242424),
    this.textColor = const Color(0xffF5F5F5),
    required this.buttonSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          foregroundColor: MaterialStateProperty.all(textColor)),
      child: Container(
        height: buttonSize,
        width: double.infinity,
        padding: EdgeInsets.only(
          top: 14.h,
          bottom: 10.h,
        ),
        child: Center(
            child: Text(text,
                style: GoogleFonts.inter(
                    fontSize: 16.sp, fontWeight: FontWeight.bold))),
      ),
    );
  }
}
