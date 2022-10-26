import 'package:flutter/material.dart';
import 'package:reelpro/consts/container.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/models/catchlog_list.dart';
import 'package:reelpro/models/feed_list.dart';
import 'package:reelpro/view_models/catchlog_list.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/view_models/feed_list.dart';
import 'package:reelpro/view_models/like_feed.dart';
import 'package:reelpro/views/add_catch_log.dart';
import 'package:reelpro/views/add_feed.dart';
import 'package:reelpro/views/bottom_navigation.dart';
import 'package:reelpro/views/catch_details.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reelpro/views/feed_details.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CatchlogListUI extends StatefulWidget {
  const CatchlogListUI({Key? key}) : super(key: key);

  @override
  State<CatchlogListUI> createState() => _CatchlogListUIState();
}

class _CatchlogListUIState extends State<CatchlogListUI> {
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(viewportFraction: 0.9);
    PageController pageController1 = PageController(viewportFraction: 0.9);
    final instance = Get.put(FeedListApi());

    CatchlogListApi catchlogListApi = Get.put(CatchlogListApi());
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80.h,
          backgroundColor: const Color(0xffF2F9FF),
          elevation: 0,
          leadingWidth: 140,
          leading: Padding(
              padding: EdgeInsets.only(top: 27.h, left: 36.w),
              child: Text30ptBlue(text: 'Tracker')),
        ),
        backgroundColor: const Color(0xffF2F9FF),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(left: 36.w, right: 36.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 24.h),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(() => BottomNavigation(currentIndex: 3));
                            },
                            child: Container100_88(
                                image: 'assets/images/Group 202.png',
                                text: 'Events'),
                          ),
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
                              Get.to(const AddFeedConst());
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
            Container(
                padding: EdgeInsets.only(left: 15.w),
                height: 439.h,
                child: FutureBuilder<FeedListResponse>(
                    future: instance.getDetails(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return PageView.builder(
                            controller: pageController1,
                            itemCount: snapshot.data!.data!.data!.length,
                            itemBuilder: (context, index) {
                              return buildFeed(
                                  snapshot.data!.data!.data![index]);
                            });
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    })),
            // SizedBox(height: 40.h),
            Padding(
              padding: EdgeInsets.only(left: 36.w, top: 40.h, right: 36.w),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text21PtBlue(text: 'Catch Log'),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const AddCatchLogUI());
                      },
                      child: const Icon(
                        Icons.add,
                        size: 30.0,
                        color: Color(0xff2B67A3),
                      ),
                    )
                  ]),
            ),
            SizedBox(height: 20.h),
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
                          return buildList(catchlogListApi.catchlogList[index]);
                        });
                  }),
            ),
          ]),
        ));
  }
}

Widget buildList(CatchlogList catchlogList) {
  var isLiked = false.obs;
  var likeCount = 1.obs;
  return GestureDetector(
    onTap: () {},
    child: Container(
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
                    catchlogList.userDetail!.profilePic == null
                        ? ProfilePicContainer(
                            image: AssetImage('assets/images/profile.png'))
                        : ProfilePicContainer(
                            image: NetworkImage(
                                catchlogList.userDetail!.profilePic!)),
                    SizedBox(width: 12.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text20PtBlue(
                            text:
                                '${catchlogList.userDetail!.firstname} ${catchlogList.userDetail!.lastname}'),
                        SizedBox(height: 7.h),
                        Row(
                          children: [
                            SvgPicture.asset('assets/images/date.svg'),
                            SizedBox(width: 6.w),
                            Text14PtTime(text: 'Mon, 12 September'),
                            SizedBox(width: 10.w),
                            SvgPicture.asset('assets/images/Subtraction 1.svg'),
                            SizedBox(width: 6.w),
                            Text14PtTime(text: '9:37 AM')
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              // Spacer(),
              Container(
                height: 65.h,
                padding: EdgeInsets.only(top: 22.h, left: 12.w),
                child: Text16PtDesc(
                    text: catchlogList.userDetail!.description.toString()),
              ),
              SizedBox(height: 8.h),
              // Spacer(),

              SizedBox(
                  height: 179.h,
                  width: double.infinity,
                  child: Image.network(catchlogList.pic!, fit: BoxFit.cover)),
              SizedBox(height: 45.h),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w),
                child: Row(
                  children: [
                    Obx(() => LikeIcon(
                        onTap: () {
                          isLiked.value = true;
                          likeCount.value++;
                        },
                        onTap1: () {
                          likeCount.value--;
                          isLiked.value = false;
                        },
                        isliked: isLiked.value)),
                    SizedBox(width: 8.w),
                    Obx(() => Text14PtBlue(text: likeCount.value.toString())),
                    SizedBox(width: 44.w),
                    CommentIcon(),
                    SizedBox(width: 8.w),
                    Text14ptDesc(text: '${catchlogList.totalComments}'),
                    SizedBox(width: 112.w),
                    Image.asset('assets/images/Group 207.png',
                        height: 40.h, width: 40.w)
                  ],
                ),
              ),
              // Spacer()
            ]),
            Positioned(
                top: 28.h, left: 318.w, child: const Icon(Icons.more_horiz))
          ],
        )),
  );
}

Widget buildFeed(Datum datum) {
  final likeFeed = Get.put(LikeFeedApi());
  var isLiked = false.obs;
  isLiked.value = datum.isLiked!;
  var likeCount = 0.obs;
  likeCount.value = datum.totalLikes!;
  return GestureDetector(
    onTap: () {
      Get.to(FeedDetailsUI(feedId: datum.id!));
    },
    child: Container(
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
                    datum.feedUserInfo!.profilePic != null
                        ? ProfilePicContainer(
                            image:
                                NetworkImage(datum.feedUserInfo!.profilePic!))
                        : ProfilePicContainer(
                            image:
                                const AssetImage('assets/images/profile.png')),
                    SizedBox(width: 12.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text20PtBlue(
                            text:
                                '${datum.feedUserInfo!.firstname} ${datum.feedUserInfo!.lastname}'),
                        SizedBox(height: 7.h),
                        Row(
                          children: [
                            SvgPicture.asset('assets/images/date.svg'),
                            SizedBox(width: 6.w),
                            Text14PtTime(text: 'Mon, 12 September'),
                            SizedBox(width: 10.w),
                            SvgPicture.asset('assets/images/Subtraction 1.svg'),
                            SizedBox(width: 6.w),
                            Text14PtTime(text: '9:37 AM')
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              // Spacer(),
              Container(
                height: 65.h,
                padding: EdgeInsets.only(top: 22.h, left: 12.w),
                child: Text16PtDesc(text: datum.description.toString()),
              ),
              SizedBox(height: 8.h),
              SizedBox(
                  height: 179.h,
                  width: double.infinity,
                  child: datum.getFeedImages!.isEmpty
                      ? Padding(
                          padding: EdgeInsets.only(top: 60.h),
                          child: Column(
                            children: [
                              Icon(Icons.error, color: Colors.black),
                              SizedBox(height: 10.h),
                              Text16PtBlack(text: 'No Image Available')
                            ],
                          ),
                        )
                      : PageView.builder(
                          itemCount: datum.getFeedImages!.length,
                          itemBuilder: (context, index) {
                            return Image.network(
                                datum.getFeedImages![index].pic!,
                                fit: BoxFit.cover);
                          })),
              SizedBox(height: 45.h),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w),
                child: Row(
                  children: [
                    Obx(() => LikeIcon(
                        onTap: () {
                          likeFeed.likeFeed(datum.id!.toInt());
                          isLiked.value = true;
                          likeCount.value++;
                        },
                        onTap1: () {
                          likeCount.value--;
                          isLiked.value = false;
                          likeFeed.likeFeed(datum.id!.toInt());
                        },
                        isliked: isLiked.value)),
                    SizedBox(width: 8.w),
                    Obx(() => Text14PtBlue(text: likeCount.value.toString())),
                    SizedBox(width: 44.w),
                    CommentIcon(),
                    SizedBox(width: 8.w),
                    Text14ptDesc(text: '${datum.totalComments}'),
                    SizedBox(width: 112.w),
                    Image.asset('assets/images/Group 207.png',
                        height: 40.h, width: 40.w)
                  ],
                ),
              ),
              // Spacer()
            ]),
            Positioned(
                top: 28.h, left: 318.w, child: const Icon(Icons.more_horiz))
          ],
        )),
  );
}
