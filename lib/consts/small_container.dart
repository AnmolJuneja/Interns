// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  BigContainer({
    Key? key,
    required this.text,
    required this.color,
    required this.width
  }) : super(key: key);

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
