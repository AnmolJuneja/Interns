// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
  VoidCallback onpressed;
  String buttonText;
  MyButton({
    Key? key,
    required this.onpressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      width: 356.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: const Color(0xff2B67A3)),
          // ignore: prefer_const_constructors
          onPressed: onpressed,
          child: Text(
            buttonText,
            style: TextStyle(
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                color: const Color(0xffF2F9FF)),
          )),
    );
  }
}

class Button85h extends StatelessWidget {
  String number;
  String text1;
  void Function()? onpressed;
  String text;
  Button85h(
      {Key? key,
      required this.onpressed,
      required this.text,
      required this.text1,
      required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 85.h,
        width: 170.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff2B67A3)),
        child: Center(
            child: Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: Column(children: [
            Text(
              number,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10.h),
            Text(
              text1,
              style: TextStyle(
                  color: const Color(0xffE2E2E2),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w300),
            ),
          ]),
        )));
  }
}

class Button85h1 extends StatelessWidget {
  String image;

  void Function()? onpressed;

  Button85h1({Key? key, required this.onpressed, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 85.h,
        width: 170.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff2B67A3)),
        child: Center(
            child: Image.asset(
          image,
          color: Colors.white,
          height: 30.h,
        )));
  }
}

class MyButton1 extends StatelessWidget {
  VoidCallback onpressed;
  String buttonText;
  MyButton1({
    Key? key,
    required this.onpressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      width: 280.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: const Color(0xff2B67A3)),
          // ignore: prefer_const_constructors
          onPressed: onpressed,
          child: Text(
            buttonText,
            style: TextStyle(
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                color: const Color(0xffF2F9FF)),
          )),
    );
  }
}

class Button56 extends StatelessWidget {
  VoidCallback onpressed;
  String buttonText;
  Color? color;
  Color textColor;
  double? width;
  Color? widthColor;
  Button56(
      {Key? key,
      required this.onpressed,
      required this.buttonText,
      required this.textColor,
      required this.width,
      required this.widthColor,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      width: 166.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: width!, color: widthColor!)),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: color),
          // ignore: prefer_const_constructors
          onPressed: onpressed,
          child: Text(
            buttonText,
            style: TextStyle(
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                color: textColor),
          )),
    );
  }
}

class ButtonTrans extends StatelessWidget {
  VoidCallback onpressed;
  String buttonText;
  Color? color;
  Color textColor;
  double? width;
  Color? widthColor;
  ButtonTrans(
      {Key? key,
      required this.onpressed,
      required this.buttonText,
      required this.textColor,
      required this.width,
      required this.widthColor,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.h,
      width: 100.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: width!, color: widthColor!)),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: color),
          // ignore: prefer_const_constructors
          onPressed: onpressed,
          child: Text(
            buttonText,
            style: TextStyle(
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                color: textColor),
          )),
    );
  }
}

class Button56Blue extends StatelessWidget {
  VoidCallback onpressed;
  String buttonText;
  Color? color;
  Color textColor;

  Button56Blue(
      {Key? key,
      required this.onpressed,
      required this.buttonText,
      required this.textColor,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      width: 166.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: color),
          // ignore: prefer_const_constructors
          onPressed: onpressed,
          child: Text(
            buttonText,
            style: TextStyle(
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                color: textColor),
          )),
    );
  }
}

class MyButtonGrey extends StatelessWidget {
  VoidCallback onpressed;
  String buttonText;
  MyButtonGrey({
    Key? key,
    required this.onpressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      width: 356.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: const Color(0xff2B67A3)),
          // ignore: prefer_const_constructors
          onPressed: onpressed,
          child: Text(
            buttonText,
            style: TextStyle(
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                color: const Color(0xffF2F9FF)),
          )),
    );
  }
}
