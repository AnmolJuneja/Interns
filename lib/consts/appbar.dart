// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppB extends StatelessWidget {
  String? title;
  IconData? secondIcon;
  IconData? firstIcon;
  VoidCallback ontap;
  VoidCallback ontap1;
  AppB({
    Key? key,
    required this.title,
    this.secondIcon,
    required this.firstIcon,
    required this.ontap,
    required this.ontap1
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF2F9FF),
      padding: EdgeInsets.only(top: 71.h, left: 36.w, right: 36.w),
      height: 128.h,
      width: 428.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        GestureDetector(
            onTap: ontap,
            child: Icon(firstIcon, color: const Color(0xff485058))),
        // SizedBox(width: 81.w),
        Center(
          child: Text(title!,
              style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontSize: 21.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff191A1C))),
        ),
        // SizedBox(width: 73.w),
        GestureDetector(
          onTap: ontap1,
          child: Icon(secondIcon, color: const Color(0xff485058)))
      ]),
    );
  }
}
class WhiteAppB extends StatelessWidget {
   String? title;
  IconData? secondIcon;
  IconData? firstIcon;
  VoidCallback ontap;
  VoidCallback ontap1;
 WhiteAppB({Key? key,
  required this.title,
    this.secondIcon,
    required this.firstIcon,
    required this.ontap,
    required this.ontap1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 71.h, left: 36.w, right: 36.w),
      height: 128.h,
      width: 428.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        GestureDetector(
            onTap: ontap,
            child: Icon(firstIcon, color: const Color(0xff485058))),
        // SizedBox(width: 81.w),
        Center(
          child: Text(title!,
              style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontSize: 21.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff191A1C))),
        ),
        // SizedBox(width: 73.w),
        GestureDetector(
          onTap: ontap1,
          child: Icon(secondIcon, color: const Color(0xff485058)))
      ]),
    );
  }
}
