import 'package:flutter/material.dart';
import 'package:reelpro/consts/catchlog_list.dart';
import 'package:reelpro/consts/container.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/models/catchlog_list.dart';
import 'package:reelpro/models/like_dislike.dart';
import 'package:reelpro/view_models/catchlog_list.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/view_models/like_dislike.dart';
import 'package:reelpro/views/add_feed.dart';

class CatchlogListUI extends StatefulWidget {
  const CatchlogListUI({Key? key}) : super(key: key);

  @override
  State<CatchlogListUI> createState() => _CatchlogListUIState();
}

class _CatchlogListUIState extends State<CatchlogListUI> {
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(viewportFraction: 0.9);
    CatchlogListApi catchlogListApi = Get.put(CatchlogListApi());
    return Scaffold(
        backgroundColor: const Color(0xffF2F9FF),
        body: Stack(
          children: [
            Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 36.w, right: 36.w, top: 64.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text30ptBlue(text: 'Tracker'),
                          SizedBox(height: 24.h),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container100_88(
                                    image: 'assets/images/Group 202.png',
                                    text: 'Events'),
                                Container100_88(
                                    image: 'assets/images/Group 203.png',
                                    text: 'Caught'),
                                Container100_88(
                                    image: 'assets/images/Group 204.png',
                                    text: 'Top weight')
                              ]),
                          SizedBox(height: 40.h),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text21PtBlue(text: 'My Feeds'),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(AddFeedConst());
                                  },
                                  child: const Icon(
                                    Icons.add,
                                    size: 30.0,
                                    color: Color(0xff2B67A3),
                                  ),
                                )
                              ]),
                          SizedBox(height: 20.h),
                        ]),
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    padding: EdgeInsets.only(left: 15.w),
                    height: 439.h,
                    child: FutureBuilder(
                        future: catchlogListApi.getList1(),
                        builder: (context, snapshot) {
                          return PageView.builder(
                              controller: pageController,
                              itemCount: catchlogListApi.catchlogList.length,
                              itemBuilder: (context, index) {
                                return buildList(
                                    catchlogListApi.catchlogList[index]);
                              });
                        }),
                  ),
                ]),
            Positioned(
                top: 872.h,
                left: 36.w,
                child: Row(
                  children: [
                    Image.asset('assets/images/tracker.png',
                        width: 22.53.w, height: 24.h),
                    SizedBox(width: 60.w),
                    Image.asset('assets/images/spotlight.png',
                        height: 17.59.h, width: 24.w),
                    SizedBox(width: 60.w),
                    Image.asset('assets/images/home.png',
                        height: 24.h, width: 21.61.w),
                    SizedBox(width: 60.w),
                    Image.asset('assets/images/location.png',
                        width: 18.78.w, height: 24.h),
                    SizedBox(width: 60.w),
                    Image.asset('assets/images/message.png',
                        height: 21.91.h, width: 24.w)
                  ],
                )),
            Positioned(
                top: 776.h,
                left: 36.w,
                right: 36.w,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text21PtBlue(text: 'Catch Log'),
                        const Icon(
                          Icons.add,
                          size: 30.0,
                          color: Color(0xff2B67A3),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      height: 26.h,
                      width: 356.w,
                      color: Colors.white,
                    )
                  ],
                ))
          ],
        ));
  }
}

Widget buildList(CatchlogList catchlogList) {
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
                  catchlogList.userDetail?.profilePic != null
                      ? Container(
                          height: 56.h,
                          width: 56.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      catchlogList.userDetail!.profilePic!))))
                      : Image.asset(
                          'assets/images/profile.png',
                          height: 56.h,
                          width: 56.w,
                        ),
                  SizedBox(width: 12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text20PtBlue(
                              text: catchlogList.userDetail!.firstname
                                  .toString()),
                          SizedBox(
                            width: 6.w,
                          ),
                          Text20PtBlue(
                              text:
                                  catchlogList.userDetail!.lastname.toString()),
                          SizedBox(width: 100.w),
                          Icon(Icons.more_horiz)
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
                child: Text16PtDesc(
                    text: catchlogList.userDetail!.description.toString())),
            SizedBox(height: 17.h),
            catchlogList.pic != null
                ? Container(
                    height: 179.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: NetworkImage(catchlogList.pic!))))
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
                          image:
                              AssetImage('assets/images/for designer.png'))))),
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
                  Image(
                      image: const AssetImage('assets/images/Group 206.png'),
                      height: 45.h,
                      width: 45.w),
                  SizedBox(width: 8.w),
                  Text14ptDesc(text: catchlogList.totalComments.toString()),
                  SizedBox(width: 112.w),
                  Image.asset('assets/images/Group 207.png',
                      height: 45.h, width: 45.w)
                ],
              )),
        ],
      ));
}
