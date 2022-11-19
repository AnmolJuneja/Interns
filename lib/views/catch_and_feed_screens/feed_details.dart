import 'package:flutter/material.dart';
import 'package:reelpro/consts/container.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/consts/text_field.dart';
import 'package:reelpro/controllers/feed_and_catch_controllers.dart';
import 'package:reelpro/models/feed_comment_list.dart';
import 'package:reelpro/models/feed_details.dart';
import 'package:get/get.dart';
import 'package:reelpro/models/feed_list.dart';
import 'package:reelpro/view_models/feed_and_catch_network_request/all_feed_request.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reelpro/views/bottom_navigation_screens/bottom_navigation.dart';
import 'package:reelpro/views/bottom_navigation_screens/tracker.dart';
import 'package:reelpro/views/catch_and_feed_screens/feed_comment_list.dart';
import 'package:reelpro/views/family_and_profile_screens/user_profile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FeedDetailsUI extends StatefulWidget {
  final int feedId;
  const FeedDetailsUI({Key? key, required this.feedId}) : super(key: key);

  @override
  State<FeedDetailsUI> createState() => _FeedDetailsUIState();
}

class _FeedDetailsUIState extends State<FeedDetailsUI> {
  FeedDetails? feedDetails;
  var isLoading = false.obs;
  Future<void> getDetails() async {
    isLoading.value = true;
    var res = await AddFeedApi().getFeedDetails(widget.feedId);
    feedDetails = FeedDetails.fromJson(res.data);
    instance.isLiked.value = feedDetails!.data!.data!.first.isLiked!;
    instance.likeCount.value = feedDetails!.data!.data!.first.totalLikes!;
    instance.commentCount.value = feedDetails!.data!.data!.first.totalComments!;
    isLoading.value = false;
  }

  FeedCList? feedCList;
  final instance = Get.put(AddFeedApi1());
  final likeFeed = Get.put(AddFeedApi());
  TextEditingController textEditingController = TextEditingController();
  final ScrollController scrollController = ScrollController();
  PageController pageController = PageController();
  @override
  void initState() {
    getDetails();
    likeFeed.getCommentListFinal(widget.feedId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Text21PtBlack(text: 'Feed Details'),
            centerTitle: true,
            leading: Padding(
              padding: EdgeInsets.only(left: 36.w),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              BottomNavigation(currentIndex: 0)),
                      (route) => false);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
            )),
        body: Obx(() => isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : Stack(children: [
                SingleChildScrollView(
                  controller: scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                left: 36.w, right: 36.w, top: 24.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(children: [
                                          feedDetails!
                                                      .data!
                                                      .data!
                                                      .first
                                                      .feedUserInfo!
                                                      .profilePic !=
                                                  null
                                              ? ProfilePicContainer(
                                                  image: NetworkImage(
                                                      feedDetails!
                                                          .data!
                                                          .data!
                                                          .first
                                                          .feedUserInfo!
                                                          .profilePic!))
                                              : ProfilePicContainer(
                                                  image: const AssetImage(
                                                      'assets/images/profile.png')),
                                          SizedBox(width: 12.w),
                                          Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text20PtBlue(
                                                    text:
                                                        '${feedDetails!.data!.data!.first.feedUserInfo!.firstname} ${feedDetails!.data!.data!.first.feedUserInfo!.lastname}'),
                                                SizedBox(height: 7.h),
                                                Row(children: [
                                                  SvgPicture.asset(
                                                      'assets/images/date.svg'),
                                                  SizedBox(width: 6.w),
                                                  Text14PtTime(
                                                      text:
                                                          'Mon, 12 September'),
                                                  SizedBox(width: 10.w),
                                                  SvgPicture.asset(
                                                      'assets/images/Subtraction 1.svg'),
                                                  SizedBox(width: 6.w),
                                                  Text14PtTime(text: '9:00 AM'),
                                                ])
                                              ])
                                        ]),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 25.h),
                                            child: GestureDetector(
                                                onTap: () {
                                                  Get.bottomSheet(
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          top: 30.h,
                                                          left: 36.w,
                                                          right: 36.w),
                                                      height: 250.h,
                                                      decoration: const BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.vertical(
                                                                  top: Radius
                                                                      .circular(
                                                                          25)),
                                                          color: Color(
                                                              0xffF2F9FF)),
                                                      child: Column(children: [
                                                        likeFeed.userId ==
                                                                feedDetails!
                                                                    .data!
                                                                    .data!
                                                                    .first
                                                                    .userId
                                                            ? const Divider(
                                                                thickness: 1)
                                                            : const SizedBox(),
                                                        SizedBox(height: 10.h),
                                                        likeFeed.userId ==
                                                                feedDetails!
                                                                    .data!
                                                                    .data!
                                                                    .first
                                                                    .userId
                                                            ? GestureDetector(
                                                                onTap: () {
                                                                  likeFeed.deleteFeed(
                                                                      feedDetails!
                                                                          .data!
                                                                          .data!
                                                                          .first
                                                                          .id!);
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child: Text16PtBlack(
                                                                    text:
                                                                        'Delete Feed'),
                                                              )
                                                            : const SizedBox(),
                                                        SizedBox(height: 10.h),
                                                        const Divider(
                                                            thickness: 1),
                                                        SizedBox(height: 10.h),
                                                        Text16PtBlack(
                                                            text:
                                                                'Report Feed'),
                                                        SizedBox(height: 10.h),
                                                        const Divider(
                                                            thickness: 1)
                                                      ]),
                                                    ),
                                                  );
                                                },
                                                child: const Icon(
                                                    Icons.more_horiz)))
                                      ]),
                                  SizedBox(height: 24.h),
                                  SizedBox(
                                      height: 45.h,
                                      child: Text16PtDesc(
                                          text: feedDetails!
                                              .data!.data!.first.description
                                              .toString())),
                                ])),
                        SizedBox(height: 10.h),
                        SizedBox(
                            height: 429.h,
                            width: double.infinity,
                            child: PageView.builder(
                                controller: pageController,
                                itemCount: feedDetails
                                    ?.data?.data?.first.getFeedImages.length,
                                itemBuilder: (context, index) {
                                  return Image.network(
                                      feedDetails?.data?.data?.first
                                              .getFeedImages[index].pic ??
                                          '',
                                      fit: BoxFit.cover);
                                })),
                        Padding(
                            padding: EdgeInsets.only(
                                top: 20.h, left: 36.w, right: 36.w),
                            child: Row(children: [
                              LikeIcon(
                                  onTap: () {
                                    instance.isLiked.value = true;
                                    likeFeed.likeFeed(feedDetails!
                                        .data!.data!.first.id!
                                        .toInt());
                                    instance.likeCount.value++;
                                  },
                                  onTap1: () {
                                    instance.isLiked.value = false;
                                    likeFeed.likeFeed(feedDetails!
                                        .data!.data!.first.id!
                                        .toInt());
                                    instance.likeCount--;
                                  },
                                  isliked: instance.isLiked.value),
                              SizedBox(width: 8.w),
                              Text14PtBlue(
                                  text: instance.likeCount.value.toString()),
                              SizedBox(width: 44.w),
                              const CommentIcon(),
                              SizedBox(width: 8.w),
                              Text14Pt58(
                                  text: instance.commentCount.value.toString()),
                              SizedBox(width: 157.w),
                              Image.asset('assets/images/Group 70.png',
                                  height: 40.h, width: 40.w)
                            ])),
                        Padding(
                            padding: EdgeInsets.only(
                                top: 36.h,
                                left: 36.w,
                                right: 36.w,
                                bottom: 80.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text21PtBlack(text: 'Comments'),
                                  SizedBox(height: 8.h),
                                  Container(
                                    child: likeFeed.commentList.isEmpty
                                        ? Center(
                                            child: Padding(
                                            padding: EdgeInsets.only(top: 60.h),
                                            child: Text16PtBlack(
                                                text:
                                                    'Be First To Add Comment On Feed'),
                                          ))
                                        : Obx(() => likeFeed.isLoading.value
                                            ? const Center(
                                                child:
                                                    CircularProgressIndicator())
                                            : ListView.builder(
                                                shrinkWrap: true,
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                itemCount:
                                                    likeFeed.commentList.length,
                                                itemBuilder: (context, index) {
                                                  return buildCommentList(
                                                      context,
                                                      likeFeed
                                                          .commentList[index]);
                                                })),
                                  )
                                ]))
                      ]),
                ),
                feedDetails!.data!.data!.first.getFeedImages.length > 1
                    ? Positioned(
                        top: 565.h,
                        left: 185.w,
                        child: SmoothPageIndicator(
                          effect: SwapEffect(
                            activeDotColor: const Color(0xff2B67A3),
                            dotColor: Colors.grey,
                            dotHeight: 10.h,
                            dotWidth: 10.w,
                          ),
                          controller: pageController,
                          count: feedDetails!
                              .data!.data!.first.getFeedImages.length,
                        ),
                      )
                    : const SizedBox()
              ])),
        bottomSheet: Container(
            padding: EdgeInsets.only(left: 36.w, right: 36.w),
            height: 75.h,
            width: 428.w,
            color: Colors.white,
            child: Center(
                child: TextFCatch(
                    hintText: 'Add your comment',
                    onchanged: null,
                    prefix: null,
                    textEditingController: textEditingController,
                    textInputType: TextInputType.text,
                    ontap: () async {
                      await AddFeedApi().addCommentFeed(
                          widget.feedId, textEditingController.text);
                      await likeFeed.getCommentListFinal(widget.feedId);
                      textEditingController.clear();
                      instance.commentCount.value++;
                      scrollController.animateTo(
                        scrollController.position.maxScrollExtent,
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 200),
                      );
                    }))));
  }
}
