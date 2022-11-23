import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/text.dart';

class LeaderBoardUI extends StatelessWidget {
  const LeaderBoardUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F9FF),
      appBar: AppBar(
          elevation: 0,
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 36.w),
                child: const Icon(
                  Icons.share_outlined,
                  color: Colors.black,
                ))
          ],
          backgroundColor: const Color(0xffF2F9FF),
          title: Text21PtBlack(text: 'Leaderboard'),
          centerTitle: true,
          leading: Padding(
              padding: EdgeInsets.only(left: 36.w),
              child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child:
                      const Icon(Icons.arrow_back_ios, color: Colors.black)))),
      body: Stack(children: [
        Positioned(
            top: Platform.isIOS ? 48.h : 55.h,
            left: 35.w,
            right: Platform.isIOS ? 220.w : 230.w,
            child: Image.asset('assets/images/Reddrum-Girl.png')),
        Positioned(
            top: Platform.isIOS ? 183.h : 190.h,
            left: 85.w,
            child: Column(children: [
              Text16PtBlack(text: 'Anthony'),
              Text14PtGrey(text: '19')
            ])),
        Positioned(
            top: Platform.isIOS ? 168.h : 181.h,
            left: 185.w,
            child: Column(children: [
              Text16PtBlack(text: 'Anthony'),
              Text14PtGrey(text: '22')
            ])),
        Positioned(
            top: Platform.isIOS ? 183.h : 190.h,
            right: 85.w,
            child: Column(children: [
              Text16PtBlack(text: 'Anthony'),
              Text14PtGrey(text: '16')
            ])),
        Positioned(
            top: Platform.isIOS ? 48.h : 55.h,
            right: 35.w,
            left: Platform.isIOS ? 220.w : 230.w,
            child: Image.asset('assets/images/brad.png')),
        Positioned(
            top: 13.h,
            left: 118.w,
            right: 118.w,
            child: Image.asset('assets/images/maxresdefault1.png')),
        Positioned(
            top: 6.h,
            left: 195.w,
            child: Center(
                child: Image.asset(
              'assets/images/crown-.png',
              height: 40.h,
            ))),
        Positioned(
            top: 263.h,
            left: 36.w,
            right: 36.w,
            child: const Divider(
              thickness: 1,
            )),
        Positioned(
            top: 280.h,
            left: 36.w,
            right: 36.w,
            bottom: 0.h,
            child: Container(
                child: ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: EdgeInsets.only(bottom: 12.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                          'assets/images/for designer.png',
                                          height: 64.h,
                                          width: 64.w),
                                      SizedBox(width: 12.w),
                                      Text16PtBlack(text: 'Anthony')
                                    ]),
                                Container(
                                  height: 38.h,
                                  width: 38.w,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange),
                                  child: const Center(
                                    child: Text('22',
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                )
                              ]));
                    })))
      ]),
    );
  }
}
