// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  // double size;
  const BigText({
    Key? key,
    required this.color,
    required this.text,
    // this.size = 40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.bebasNeue(
            fontWeight: FontWeight.bold, color: color, fontSize: 40.sp));
  }
}
