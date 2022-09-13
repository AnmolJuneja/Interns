// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextF1 extends StatelessWidget {
  String text;
  TextF1({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.50,
      child: Text(text,
          style: TextStyle(
              fontFamily: 'Helvetica',
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xff191A1C))),
    );
  }
}

class Text21PtBlue extends StatelessWidget {
  String text;
  Text21PtBlue({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontFamily: 'Helvetica',
            fontSize: 21.sp,
            fontWeight: FontWeight.bold,
            color: const Color(0xff2B67A3)));
  }
}

class PostText extends StatelessWidget {
  String text;
  PostText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontFamily: 'Helvetica',
            fontWeight: FontWeight.bold,
            fontSize: 20.sp,
            color: const Color(0xff191A1C)));
  }
}

class Text20Pt extends StatelessWidget {
  String text;
  Text20Pt({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
            fontFamily: 'Helvetica',
            fontWeight: FontWeight.bold,
            color: Color(0xff2B67A3)));
  }
}

class Text14Pt extends StatelessWidget {
  String text;
  Text14Pt({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: use_full_hex_values_for_flutter_colors
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Helvetica',
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: const Color(0xff898989)),
    );
  }
}

class Text14PtBlue extends StatelessWidget {
  String text;
  Text14PtBlue({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Helvetica',
          fontWeight: FontWeight.w500,
          fontSize: 14.sp,
          color: const Color(0xff2B67A3)),
    );
  }
}
