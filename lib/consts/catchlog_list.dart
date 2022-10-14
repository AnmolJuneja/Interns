// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:reelpro/consts/text.dart';

class CatchlogListConst extends StatelessWidget {
  String? nullProfile;
  String actualProfile;
  String firstname;
  String lastname;
  String description;
  String? nullpic;
  String actualPic;
  String totalComments;
  String image;
  CatchlogListConst({
    Key? key,
    required this.nullProfile,
    required this.actualProfile,
    required this.firstname,
    required this.lastname,
    required this.description,
    required this.nullpic,
    required this.actualPic,
    required this.totalComments,
    required this.image
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isLiked = false.obs;
    var likeCount = 1.obs;
    return Container(
        height: 439.h,
        width: 356.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        margin: EdgeInsets.only(right: 15.w),
        child: Stack(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.only(top: 16.h, left: 12.w),
                child: Row(
                  children: [
                    nullProfile != null
                        ? Container(
                            height: 56.h,
                            width: 56.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(actualProfile))))
                        : Image.asset(
                            image,
                            height: 56.h,
                            width: 56.w,
                          ),
                    SizedBox(width: 12.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text20PtBlue(text: firstname),
                            SizedBox(
                              width: 6.w,
                            ),
                            Text20PtBlue(text: lastname),
                            SizedBox(width: 100.w),
                            const Icon(Icons.more_horiz)
                          ],
                        ),
                        SizedBox(height: 7.h),
                        Row(
                          children: [
                            Image.asset(
                                'assets/images/Icon material-date-range.png'),
                            SizedBox(width: 6.w),
                            Text14PtTime(text: 'Mon, 12 September'),
                            SizedBox(width: 10.w),
                            Image.asset('assets/images/Subtraction 1.png'),
                            SizedBox(width: 6.w),
                            Text14PtTime(text: '9:37 AM')
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 22.h, left: 12.w),
                  child: Text16PtDesc(text: description)),
              SizedBox(height: 17.h),
              nullpic != null
                  ? Container(
                      height: 179.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: NetworkImage(actualPic))))
                  : const Icon(Icons.add_a_photo),
              SizedBox(height: 16.h)
            ]),
            Positioned(
                top: 335.h,
                left: 16.w,
                child: Container(
                    height: 24.h,
                    width: 24.w,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.white),
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                            image: AssetImage(
                                'assets/images/for designer.png'))))),
            Positioned(
                top: 335.h,
                left: 34.w,
                child: Container(
                    height: 24.h,
                    width: 24.w,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.white),
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                            image: AssetImage('assets/images/compo1.png'))))),
            Positioned(
                top: 335.h,
                left: 52.w,
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
                top: 335.h,
                left: 84.w,
                child: Text14PtTime(text: 'John, Enna and 82 others')),
            Positioned(
                top: 383.h,
                left: 16.w,
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
                              onTap: (() =>
                                  {isLiked.value = true, likeCount++}),
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
                    Image(
                        image: const AssetImage('assets/images/Group 206.png'),
                        height: 45.h,
                        width: 45.w),
                    SizedBox(width: 8.w),
                    Text14ptDesc(text: totalComments),
                    SizedBox(width: 112.w),
                    Image.asset('assets/images/Group 207.png',
                        height: 45.h, width: 45.w)
                  ],
                )),
          ],
        ));
  }
}
