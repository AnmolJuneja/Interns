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
      height: 56.h, width: 356.w, decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: const Color(0xff2B67A3)),
        // ignore: prefer_const_constructors
        onPressed: onpressed, child: Text(buttonText , style: TextStyle(fontFamily: 'Helvetica' , fontWeight: FontWeight.w500 , fontSize: 16.sp , color: Color(0xffF2F9FF)),)),
    );
  }
}
