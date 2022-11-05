// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/text.dart';

class SmallContainer extends StatelessWidget {
  String text;
  Color color;
  double width;
  SmallContainer(
      {Key? key, required this.text, required this.color, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 55.h,
        width: 110.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          // ignore: use_full_hex_values_for_flutter_colors
          border: Border.all(color: color, width: width),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                // ignore: use_full_hex_values_for_flutter_colors
                color: Color.fromRGBO(113, 154, 195, 0.16),
                blurRadius: 0,
                offset: Offset(0, 4))
          ],
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              fontFamily: 'Helvetica',
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xff485058)),
        )));
  }
}

class BigContainer extends StatelessWidget {
  String text;
  Color color;
  double width;
  BigContainer(
      {Key? key, required this.text, required this.color, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 52.h,
        width: 172.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          // ignore: use_full_hex_values_for_flutter_colors
          border: Border.all(color: color, width: width),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                // ignore: use_full_hex_values_for_flutter_colors
                color: Color.fromRGBO(113, 154, 195, 0.16),
                blurRadius: 0,
                offset: Offset(0, 4))
          ],
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              fontFamily: 'Helvetica',
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xff485058)),
        )));
  }
}

class CircleContainerAnglers extends StatelessWidget {
  String text;
  CircleContainerAnglers({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 44.h,
        width: 44.w,
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: Color(0xff2B67A3)),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.sp, color: Color(0xffF2F9FF)),
          ),
        ));
  }
}

class ContainerManageFamilyList extends StatelessWidget {
  const ContainerManageFamilyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(113, 154, 195, 0.16),
                blurRadius: 0,
                offset: Offset(0, 4))
          ],
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
              width: 1, color: const Color.fromRGBO(113, 154, 195, 0.16))),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 12.w),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Image.asset('assets/images/for designer.png',
                height: 64.h, width: 64.w),
            SizedBox(width: 12.w),
            Padding(
              padding: EdgeInsets.only(top: 27.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text16PtBlue(text: 'Anthony Souza'),
                    Text14Pt(text: 'Registered Tournaments (4)')
                  ]),
            )
          ]),
        ),
      ),
    );
  }
}
