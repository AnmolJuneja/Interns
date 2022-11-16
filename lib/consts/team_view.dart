// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/image.dart';
import 'package:reelpro/consts/small_text.dart';
import 'package:reelpro/consts/text.dart';

class UpperView extends StatelessWidget {
  String image;
  String post;
  String members;
  String pendingRequests;
  String location;
  void Function()? onpressed;
  String btn1Text;
  String btn2Text;
  UpperView({
    Key? key,
    required this.image,
    required this.post,
    required this.members,
    required this.pendingRequests,
    required this.location,
    required this.onpressed,
    required this.btn1Text,
    required this.btn2Text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.h),
      color: Colors.white,
      height: 435.h,
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 15.h),
              Container(
                height: 250.h,
                width: 428.w,
                decoration: BoxDecoration(
                    // border: Border.all(color: Colors.white, width: 2),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(image))),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h, left: 36.w, right: 36.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      PostText(text: post),
                      TextF1(text: 'Posts'),
                    ]),
                    Column(children: [
                      PostText(text: members),
                      TextF1(text: 'Members'),
                    ]),
                    Column(children: [
                      PostText(text: pendingRequests),
                      TextF1(text: 'Pending Request')
                    ])
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.h, left: 36.w, right: 36.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 44.h,
                      width: 166.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xff485058), width: 1),
                          borderRadius: BorderRadius.circular(5)),
                      child: ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.white),
                          onPressed: onpressed,
                          child: Center(
                              child: Text(
                            btn1Text,
                            style: TextStyle(
                                fontFamily: 'Helvetica',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff485058)),
                          ))),
                    ),
                    Container(
                      height: 44.h,
                      // width: 167.w,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xff2B67A3)),
                          onPressed: onpressed,
                          child: Center(
                              child: Text(
                            btn2Text,
                            style: TextStyle(
                                fontFamily: 'Helvetica',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ))),
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
              top: 233.h,
              right: 36.w,
              left: 292.w,
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xff719AC3)),
                  height: 24.h,
                  width: 100.w,
                  child: Center(
                      child: Text(location,
                          style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 14.sp)))))
        ],
      ),
    );
  }
}

class TeamViewColumn extends StatelessWidget {
  String title;
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
  String likeImage;
  String likeText;
  String commentImage;
  String commentText;
  String shareImage;
  TeamViewColumn(
      {Key? key,
      required this.title,
      required this.shareImage,
      required this.commentText,
      required this.image,
      required this.text,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.image1,
      required this.image2,
      required this.image3,
      required this.image4,
      required this.likeImage,
      required this.likeText,
      required this.commentImage,
      required this.textLike})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 28.h, left: 36.w, right: 36.w),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text21PtBlue(text: title),
              const Icon(Icons.add, color: Color(0xff2B67A3))
            ],
          ),
          SizedBox(height: 20.h),
          Container(
              color: Colors.white,
              height: 439.h,
              width: 356.w,
              child: Stack(
                children: [
                  Column(children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 16.h, left: 12.w, right: 12.w),
                      child: Column(
                        children: [
                          Row(children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image: AssetImage(image),
                                  height: 56.h,
                                  width: 56.w,
                                ),
                                SizedBox(width: 12.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text20Pt(text: text),
                                    SizedBox(height: 7.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                                padding: EdgeInsets.only(bottom: 20.h),
                                child: const Icon(Icons.more_horiz))
                          ]),
                          SizedBox(height: 18.h),
                          SmallText(
                              text: text3, color: const Color(0xff485058)),
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
                  Positioned(
                      top: 344.h, left: 84.w, child: Text14Pt(text: textLike)),
                  Positioned(
                      top: 383.h,
                      left: 16.w,
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage(likeImage),
                            height: 40.h,
                            width: 40.w,
                          ),
                          SizedBox(width: 8.w),
                          Text14PtBlue(text: likeText),
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
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
