// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextF extends StatelessWidget {
  TextEditingController textEditingController;
  String hintText;
  TextInputType textInputType;
  Widget? prefix;
  TextF({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    required this.textInputType,
    required this.prefix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.h,
      width: 356.w,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
            // ignore: use_full_hex_values_for_flutter_colors
            color: Color.fromRGBO(113, 154, 195, 0.16),
            blurRadius: 0,
            offset: Offset(0, 4))
      ], borderRadius: BorderRadius.circular(5)),
      child: TextField(
        controller: textEditingController,
        keyboardType: textInputType,
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding:
                EdgeInsets.only(top: 17.h, bottom: 14.h, left: 20.w),
            hintText: hintText,
            hintStyle: TextStyle(
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.w400,
                fontSize: 15.sp,
                // ignore: use_full_hex_values_for_flutter_colors
                color: const Color(0xff48505899)),
            fillColor: Colors.white,
            prefix: prefix,
            filled: true,
            // ignore: use_full_hex_values_for_flutter_colors
            enabledBorder: const OutlineInputBorder(
                // ignore: use_full_hex_values_for_flutter_colors
                borderSide: BorderSide(color: Color(0xff2B67A329), width: 1))),
      ),
    );
  }
}

class TextFS extends StatelessWidget {
  TextEditingController textEditingController;
  String hintText;
  TextInputType textInputType;
  Widget? prefix;
  TextFS({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    required this.textInputType,
    required this.prefix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 60.w,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
            // ignore: use_full_hex_values_for_flutter_colors
            color: Color.fromRGBO(113, 154, 195, 0.16),
            blurRadius: 0,
            offset: Offset(0, 4))
      ], borderRadius: BorderRadius.circular(5)),
      child: TextField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        controller: textEditingController,
        keyboardType: textInputType,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.w400,
                fontSize: 15.sp,
                // ignore: use_full_hex_values_for_flutter_colors
                color: const Color(0xff48505899)),
            fillColor: Colors.white,
            prefix: prefix,
            filled: true,
            // ignore: use_full_hex_values_for_flutter_colors
            enabledBorder: const OutlineInputBorder(
                // ignore: use_full_hex_values_for_flutter_colors
                borderSide: BorderSide(color: Color(0xff2B67A329), width: 1))),
      ),
    );
  }
}

class BigTextField extends StatelessWidget {
  TextEditingController textEditingController;
  String hintText;
  TextInputType textInputType;
  Widget? prefix;
  BigTextField({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    required this.textInputType,
    this.prefix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 112.h,
        width: 356.w,
        decoration: BoxDecoration(
            // ignore: use_full_hex_values_for_flutter_colors
            border: Border.all(color: const Color(0xff2B67A329)),
            boxShadow: const [
              BoxShadow(
                  // ignore: use_full_hex_values_for_flutter_colors
                  color: Color.fromRGBO(113, 154, 195, 0.16),
                  blurRadius: 0,
                  offset: Offset(0, 4))
            ],
            borderRadius: BorderRadius.circular(5),
            color: Colors.white),
        child: TextField(
          controller: textEditingController,
          keyboardType: textInputType,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding:
                EdgeInsets.only(top: 17.h, bottom: 14.h, left: 20.w),
            hintText: hintText,
            hintStyle: TextStyle(
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.w400,
                fontSize: 15.sp,
                // ignore: use_full_hex_values_for_flutter_colors
                color: const Color(0xff48505899)),
            fillColor: Colors.white,
            prefix: prefix,
            filled: true,
            // ignore: use_full_hex_values_for_flutter_colors
            // enabledBorder: const OutlineInputBorder(
            //     // ignore: use_full_hex_values_for_flutter_colors
            //     borderSide: BorderSide(color: Color(0xff2B67A329), width: 1))),
          ),
        ));
  }
}
