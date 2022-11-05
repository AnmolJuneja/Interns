import 'package:flutter/material.dart';
import 'package:reelpro/consts/container.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/models/catchlog_list_response.dart';
import 'package:reelpro/models/feed_details.dart';
import 'package:reelpro/models/feed_list.dart';
import 'package:reelpro/models/my_feed_list.dart';
import 'package:reelpro/view_models/catchlog_list.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/view_models/comment_list.dart';
import 'package:reelpro/view_models/feed_details.dart';
import 'package:reelpro/view_models/feed_list.dart';
import 'package:reelpro/view_models/like_catchlog.dart';
import 'package:reelpro/view_models/like_feed.dart';
import 'package:reelpro/view_models/my_feed_list.dart';
import 'package:reelpro/view_models/registeration_step_two.dart';
import 'package:reelpro/views/add_catch_log.dart';
import 'package:reelpro/views/add_feed.dart';
import 'package:reelpro/views/bottom_navigation.dart';
import 'package:reelpro/views/catch_details.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reelpro/views/feed_details.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:reelpro/views/feed_list.dart';
import 'package:reelpro/views/user_profile.dart';

class CatchlogListUI extends StatefulWidget {
  const CatchlogListUI({Key? key}) : super(key: key);

  @override
  State<CatchlogListUI> createState() => _CatchlogListUIState();
}

class _CatchlogListUIState extends State<CatchlogListUI> {
  CatchlogListApi catchlogListApi = Get.put(CatchlogListApi());
  FeedDetails? feedDetails;
  var catchlogList = <CatchlogList>[].obs;
  var isLoading = false.obs;
  getList1() async {
    isLoading.value = true;
    await catchlogListApi.getCatchlogList(2).then((value) {
      var resp = CatchlogListResponse.fromJson(value.data);
      catchlogList.clear();
      catchlogList.addAll(resp.data);
    });
    isLoading.value = false;
  }

  final instance = Get.put(FeedDetailsApi());
  final registerationStepTwo = Get.put(RegistrationStepTwo2());
  final instanceApi = Get.put(MyFeedListApi());
  PageController pageController = PageController(viewportFraction: 0.9);
  PageController pageController1 = PageController(viewportFraction: 0.9);
  final instance1 = Get.put(FeedListApi());
  var userId;
  @override
  void initState() {
    // instanceApi.getMyFeedListFinal();
    getList1();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80.h,
          backgroundColor: const Color(0xffF2F9FF),
          elevation: 0,
          leadingWidth: 140,
          leading: Padding(
              padding: EdgeInsets.only(top: 38.h, left: 36.w),
              child: Text30ptBlue(text: 'Tracker')),
        ),
        backgroundColor: const Color(0xffF2F9FF),
        body: SingleChildScrollView(
          child: Container(
            height: 1200.h,
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
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            BottomNavigation(currentIndex: 3)));
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
                  height: 439.h,
                  child: FutureBuilder<FeedListResponse>(
                      future: instance1.getDetails(),
                      builder: (contex, snapshot) {
                        if (snapshot.hasData) {
                          return snapshot.data!.data!.data!.isNotEmpty
                              ? PageView.builder(
                                  controller: pageController1,
                                  itemCount: snapshot.data!.data!.data!.length,
                                  itemBuilder: (context, index) {
                                    return buildFeed(
                                        snapshot.data!.data!.data![index]);
                                  })
                              : Center(
                                  child: Text16PtBlack(text: 'No Feed Data'));
                        } else {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                      })),
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
                  // padding: EdgeInsets.only(left: 15.w),
                  height: 439.h,
                  child: Obx(() => isLoading.value
                      ? const Center(child: CircularProgressIndicator())
                      : Obx(() => catchlogList.value.isEmpty
                          ? Center(
                              child: Text16PtBlack(
                              text: 'No Catchlog Data',
                            ))
                          : PageView.builder(
                              controller: pageController,
                              itemCount: catchlogList.value.length,
                              itemBuilder: (context, index) {
                                return buildList(catchlogList.value[index]);
                              })))),
            ]),
          ),
        ));
  }
}

Widget buildList(CatchlogList catchlogList) {
  LikeCatchlogApi likeCatchlogApi = Get.put(LikeCatchlogApi());
  var isLiked = false.obs;
  var likeCount = 0.obs;
  var commentCount = 0.obs;
  isLiked.value = catchlogList.isLiked!;
  likeCount.value = catchlogList.totalLikes!;
  commentCount.value = catchlogList.totalComments!;
  return GestureDetector(
    onTap: () {
      Get.to(CatchDetailsUI(catchId: catchlogList.id!.toInt()));
    },
    child: Container(
        height: 439.h,
        width: 356.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        margin: EdgeInsets.only(left: 10.w),
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
                child: Text16PtDesc(text: catchlogList.comment.toString()),
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
                          likeCatchlogApi
                              .likeCatchlog(catchlogList.id!.toInt());
                        },
                        onTap1: () {
                          likeCount.value--;
                          isLiked.value = false;
                          likeCatchlogApi
                              .likeCatchlog(catchlogList.id!.toInt());
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
  var likeCount = 0.obs;
  var commentCount = 0.obs;
  isLiked.value = datum.isLiked!;
  likeCount.value = datum.totalLikes!;
  commentCount.value = datum.totalComments!;

  return GestureDetector(
    onTap: () {
      Get.to(FeedDetailsUI(feedId: datum.id!));
    },
    child: datum.getFeedImages!.isEmpty
        ? Center(child: Text16PtBlack(text: 'No Feed Data'))
        : Container(
            height: 439.h,
            width: 356.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            margin: EdgeInsets.only(left: 10.w),
            child: Stack(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16.h, left: 12.w),
                    child: Row(
                      children: [
                        datum.feedUserInfo!.profilePic != null
                            ? ProfilePicContainer(
                                image: NetworkImage(
                                    datum.feedUserInfo!.profilePic!))
                            : ProfilePicContainer(
                                image: const AssetImage(
                                    'assets/images/profile.png')),
                        SizedBox(width: 12.w),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text20PtBlue(
                                  text:
                                      '${datum.feedUserInfo!.firstname} ${datum.feedUserInfo!.lastname}'),
                              SizedBox(height: 7.h),
                              Row(children: [
                                SvgPicture.asset('assets/images/date.svg'),
                                SizedBox(width: 6.w),
                                Text14PtTime(text: 'Mon, 12 September'),
                                SizedBox(width: 10.w),
                                SvgPicture.asset(
                                    'assets/images/Subtraction 1.svg'),
                                SizedBox(width: 6.w),
                                Text14PtTime(text: '9:37 AM')
                              ])
                            ])
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
                                return Container(
                                  width: double.infinity,
                                  child: Image(
                                      fit: BoxFit.fitWidth,
                                      image: NetworkImage(
                                          datum.getFeedImages![index].pic!)),
                                );
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
                        Obx(() =>
                            Text14PtBlue(text: likeCount.value.toString())),
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
