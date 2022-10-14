import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/text.dart';

class EventDetailsConst extends StatelessWidget {
  String image;
  String text15;
  String text2;
  String text16;
  String text18;
  String text17;
  EventDetailsConst(
      {Key? key,
      required this.image,
      required this.text15,
      required this.text16,
      required this.text17,
      required this.text18,
      required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250.h,
          width: 428.w,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: NetworkImage(image))),
        ),
        Positioned(
            top: 208.h,
            left: 36.w,
            // right: 36.w,
            child: Row(
              children: [
                Container(
                  height: 26.h,
                  width: 26.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color(0xff719AC3)),
                  child: Center(child: Text16HMedium(text: text15)),
                ),
                SizedBox(width: 9.w),
                Text16HMedium(text: text2),
                SizedBox(width: 16.w),
                Container(
                  height: 26.h,
                  width: 26.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color(0xff719AC3)),
                  child: Center(child: Text16HMedium(text: text16)),
                ),
                SizedBox(width: 5.w),
                Text16HMedium(text: text17),
                SizedBox(width: 111.w),
                Container(
                  height: 24.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color(0xff719AC3)),
                  child: Center(child: Text16HMedium(text: text18)),
                ),
              ],
            )),
      ],
    );
  }
}

class EventDetailsRow extends StatelessWidget {
  String image;
  String text;
  String image1;
  String text1;
  String image2;
  String text2;
  String text4;
  String text5;
  String text6;
  String imagetime;
  String imagedate;
  String text8;
  String text7;
  String text9;
  String text12;
  String text11;
  String text10;
  String text13;
  EventDetailsRow(
      {Key? key,
      required this.image,
      required this.text,
      required this.image1,
      required this.text1,
      required this.image2,
      required this.text2,
      required this.text10,
      required this.text5,
      required this.text9,
      required this.text6,
      required this.imagedate,
      required this.imagetime,
      required this.text8,
      required this.text7,
      required this.text11,
      required this.text12,
      required this.text13,
      required this.text4})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 27.h, left: 36.w, right: 36.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image(image: AssetImage(image)),
                SizedBox(width: 8.w),
                Text16Pt(text: text),
                SizedBox(width: 115.w),
                Image(image: AssetImage(image1)),
                SizedBox(width: 8.w),
                Text14PtBlue(text: text1)
              ],
            ),
            SizedBox(height: 28.h),
            Row(
              children: [
                Image(image: AssetImage(image2)),
                SizedBox(width: 8.w),
                Text16Pt(text: text2 + '-'),
                Text16Pt(text: text4),
                Text(
                  text5,
                  style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: const Color(0xff485058)),
                )
              ],
            ),
            SizedBox(height: 30.h),
            Text14ptSilver(text: text6),
            SizedBox(height: 8.h),
            Row(
              children: [
                Image(image: AssetImage(imagedate)),
                SizedBox(width: 8.w),
                Text16Pt(text: text7),
                SizedBox(width: 10.w),
                Image(image: AssetImage(imagetime)),
                SizedBox(width: 8.w),
                Text16Pt(text: text8)
              ],
            ),
            SizedBox(height: 15.h),
            Text14ptSilver(text: text9),
            SizedBox(height: 8.h),
            Row(
              children: [
                Image(image: AssetImage(imagedate)),
                SizedBox(width: 8.w),
                Text16Pt(text: text7),
                SizedBox(width: 10.w),
                Image(image: AssetImage(imagetime)),
                SizedBox(width: 8.w),
                Text16Pt(text: text10)
              ],
            ),
            SizedBox(height: 31.h),
            Text14ptSilver(text: text11),
            SizedBox(height: 10.h),
            Container(
                height: 80.h,
                width: 356.w,
                child: Text14ptDesc(
                  text: text12,
                )),
            SizedBox(height: 5.h),
            Text14PtBlue(text: text13),
            SizedBox(height: 29.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button85h(onpressed: () {}, text: 'anything'),
                Button85h(onpressed: () {}, text: 'anything')
              ],
            )
          ],
        ));
  }
}
