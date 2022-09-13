// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LabelText extends StatelessWidget {
  String text;
  LabelText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontFamily: 'Helvetica',
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xff719AC3)));
  }
}
