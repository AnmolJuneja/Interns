// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/image.dart';
import 'package:reelpro/consts/small_text.dart';
import 'package:reelpro/consts/text.dart';
import 'package:get/get.dart';

class Post extends StatelessWidget {
  // String title;
  String image;
  String text;
  String text1;
  String text2;
  String text3;
  String image1;
  String image2;
  String image3;
  String image4;
  String textLike;
  // String likeText;
  String commentImage;
  String commentText;
  String shareImage;
  Post({
    Key? key,
    required this.image,
    required this.text,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
    required this.textLike,
    // required this.likeImage,
    // required this.likeText,
    required this.commentImage,
    required this.commentText,
    required this.shareImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isLiked = false.obs;
    var likeCount = 2.obs;
    return Container(
        height: 439.h,
        width: 356.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                // ignore: use_full_hex_values_for_flutter_colors
                color: Color.fromRGBO(113, 154, 195, 0.16),
                blurRadius: 0,
                offset: Offset(0, 4))
          ],
        ),
        child: Stack(
          children: [
            Column(children: [
              Padding(
                padding: EdgeInsets.only(top: 16.h, left: 12.w, right: 12.w),
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 56.h,
                            width: 56.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    width: 1, color: const Color(0xff48505826)),
                                color: const Color(0xffF2F9FF),
                                image:
                                    DecorationImage(image: AssetImage(image)))),
                        SizedBox(width: 12.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text20Pt(text: text),
                            SizedBox(height: 7.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Image(
                                    image: AssetImage(
                                        'assets/images/Icon material-date-range.png')),
                                SizedBox(width: 6.w),
                                Text14Pt(text: text1),
                                SizedBox(width: 10.w),
                                const Image(
                                    image: AssetImage(
                                        'assets/images/Subtraction 1.png')),
                                SizedBox(width: 7.w),
                                Text14Pt(text: text2)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 18.h),
                    SmallText(text: text3, color: const Color(0xff485058)),
                  ],
                ),
              ),
              SizedBox(height: 17.h),
              Container(
                height: 179.h,
                width: 356.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(image1))),
              )
            ]),
            Positioned(
                top: 341.h,
                left: 16.w,
                child: LikeImage(
                  image1: image2,
                )),
            Positioned(
                top: 341.h, left: 34.w, child: LikeImage(image1: image3)),
            Positioned(
                top: 341.h, left: 52.w, child: LikeImage(image1: image4)),
            Positioned(top: 344.h, left: 84.w, child: Text14Pt(text: textLike)),
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
                        image: AssetImage(commentImage),
                        height: 40.h,
                        width: 40.w),
                    SizedBox(width: 8.w),
                    Text14Pt(text: commentText),
                    SizedBox(width: 112.w),
                    Image(
                        image: AssetImage(shareImage),
                        height: 40.h,
                        width: 40.w)
                  ],
                )),
          ],
        ));
  }
}
