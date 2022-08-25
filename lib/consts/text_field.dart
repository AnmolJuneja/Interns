// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextField1 extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;
  final bool obsecure;
  const TextField1({
    Key? key,
    required this.text,
    this.bgColor = Colors.white,
    this.textColor = const Color(0xff9F9F9F),
    required this.obsecure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(obscureText: obsecure,
        decoration: InputDecoration( fillColor: bgColor,filled: true,
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            hintText: text,
            hintStyle: GoogleFonts.inter(
                fontSize: 14.sp, fontWeight: FontWeight.w500, color: textColor),
            contentPadding:
                EdgeInsets.only(top: 16.h, bottom: 12.h, left: 20.w)));
  }
}
