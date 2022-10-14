import 'package:flutter/material.dart';
import 'package:reelpro/consts/post.dart';
import 'package:reelpro/consts/text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/text_field.dart';

class SpotlightScreen extends StatelessWidget {
  const SpotlightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: const Color(0xffF2F9FF),
          body: Column(children: [
            Padding(
                padding: EdgeInsets.only(top: 64.h, left: 36.w, right: 32.w),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text30ptBlue(text: 'Explore'),
                      SizedBox(height: 24.h),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextFSpotlight(
                                textEditingController: textEditingController,
                                hintText: 'Fish tournament',
                                textInputType: TextInputType.text,
                                prefix: null,
                                onchanged: (value) {}),
                            Image.asset('assets/images/Group 209.png'),
                          ]),
                      SizedBox(height: 25.h),
                    ])),
            const TabBar(
              indicatorWeight: 2.0,
              isScrollable: false,
              indicatorSize: TabBarIndicatorSize.tab,
              automaticIndicatorColorAdjustment: true,
              // automaticIndicatorColorAdjustment: false,
              indicatorColor: Color(0xff2B67A3),
              labelColor: Color(0xff2B67A3),
              // ignore: use_full_hex_values_for_flutter_colors
              unselectedLabelColor: Color(0xff485058),
              tabs: [Tab(text: 'Spotlight'), Tab(text: 'Members')],
            ),
            Flexible(
              child: Container(
                width: double.infinity,
                height: 650.h,
                child: TabBarView(children: [
                  SingleChildScrollView(
                      child: Padding(
                          padding: EdgeInsets.only(
                              top: 24.h, left: 36.w, right: 36.w),
                          child: Column(children: [
                            Post(
                                image: 'assets/images/Layer 2.png',
                                text: 'Team FishOn',
                                text1: '5d ago',
                                text2: 'North Atlantic Ocean',
                                text3:
                                    'Merry Christmas! May 2022 be the best year yet! Get out there and fish!',
                                image1: 'assets/images/bitmap1.png',
                                image2: 'assets/images/for designer.png',
                                image3: 'assets/images/for designer.png',
                                image4: 'assets/images/for designer.png',
                                textLike: 'John, Enna and 82 others',
                                commentImage: 'assets/images/Group 206.png',
                                commentText: '12',
                                shareImage: 'assets/images/Group 207.png'),
                            SizedBox(height: 24.h),
                            Post(
                                image: 'assets/images/Layer 2.png',
                                text: 'Team FishOn',
                                text1: '5d ago',
                                text2: 'North Atlantic Ocean',
                                text3:
                                    'Merry Christmas! May 2022 be the best year yet! Get out there and fish!',
                                image1: 'assets/images/bitmap1.png',
                                image2: 'assets/images/for designer.png',
                                image3: 'assets/images/for designer.png',
                                image4: 'assets/images/for designer.png',
                                textLike: 'John, Enna and 82 others',
                                commentImage: 'assets/images/Group 206.png',
                                commentText: '12',
                                shareImage: 'assets/images/Group 207.png')
                          ]))),
                  Column(children: []),
                ]),
              ),
            )
          ])),
    );
  }
}
