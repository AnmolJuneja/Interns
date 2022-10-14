// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:reelpro/consts/text.dart';

class CatchDetailsConst extends StatelessWidget {
  String? profileImage;
  String firstName;
  String lastName;
  String dayText;
  String timeText;
  String? descriptionText;
  String centerImage;
  String likeText;
  String totalComments;
  CatchDetailsConst({
    Key? key,
    this.profileImage,
    required this.firstName,
    required this.lastName,
    required this.dayText,
    required this.timeText,
    this.descriptionText,
    required this.centerImage,
    required this.likeText,
    required this.totalComments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isLiked = false.obs;
    var likeCount = 3.obs;
    return Container(
        height: 470.h,
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.h, left: 36.w, right: 36.w),
                child: Row(children: [
                  Container(
                      height: 56.h,
                      width: 56.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              width: 1, color: const Color(0xff909090)),
                          image: profileImage != null
                              ? DecorationImage(
                                  image: NetworkImage(profileImage!))
                              : const DecorationImage(
                                  image: AssetImage(
                                      'assets/images/profile.png')))),
                  SizedBox(width: 12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Text20PtBlue(text: firstName),
                        SizedBox(width: 6.w),
                        Text20PtBlue(text: lastName),
                        SizedBox(width: 122.w),
                        const Icon(Icons.more_horiz)
                      ]),
                      SizedBox(height: 7.h),
                      Row(children: [
                        Image.asset(
                            'assets/images/Icon material-date-range.png'),
                        SizedBox(width: 6.w),
                        Text14PtTime(text: dayText),
                        SizedBox(width: 10.w),
                        Image.asset('assets/images/Subtraction 1.png'),
                        SizedBox(width: 6.w),
                        Text14PtTime(text: timeText)
                      ]),
                    ],
                  ),
                ]),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 20.h, right: 36.w, left: 36.w),
                  child: Text16PtDesc(text: descriptionText!)),
              SizedBox(height: 16.h),
              Container(
                  height: 210.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(centerImage))))
            ],
          ),
          Positioned(
              top: 383.h,
              left: 36.w,
              child: Container(
                height: 24.h,
                width: 24.w,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                        image: AssetImage('assets/images/for designer.png'))),
              )),
          Positioned(
              top: 383.h,
              left: 54.w,
              child: Container(
                height: 24.h,
                width: 24.w,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                        image: AssetImage('assets/images/sagar2.png'))),
              )),
          Positioned(
              top: 383.h,
              left: 72.w,
              child: Container(
                height: 24.h,
                width: 24.w,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                        image: AssetImage('assets/images/for designer.png'))),
              )),
          Positioned(
              top: 384.h, left: 104.w, child: Text14PtTime(text: likeText)),
          Positioned(
              top: 422.h,
              left: 36.w,
              child: Row(
                children: [
                  Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: const BoxDecoration(
                          // ignore: use_full_hex_values_for_flutter_colors
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(113, 154, 195, 0.16)),
                      child: Obx(
                        () => GestureDetector(
                            onTap: (() => {isLiked.value = true, likeCount++}),
                            child: isLiked.value
                                ? GestureDetector(
                                    onTap: () {
                                      isLiked.value = false;
                                      likeCount--;
                                    },
                                    child: const Icon(Icons.favorite,
                                        color: Colors.blue))
                                : const Icon(Icons.favorite_border,
                                    color: Colors.blue)),
                      )),
                  SizedBox(width: 8.w),
                  Obx(() => Text14PtBlue(text: likeCount.value.toString())),
                  SizedBox(width: 44.w),
                  Image.asset('assets/images/Group 206.png',
                      height: 45.h, width: 45.w),
                  SizedBox(width: 8.w),
                  Text14Pt(text: totalComments),
                  SizedBox(width: 142.w),
                  Image.asset('assets/images/Group 207.png',
                      height: 45.h, width: 45.w)
                ],
              ))
        ]));
  }
}
