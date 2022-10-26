import 'package:flutter/material.dart';
import 'package:reelpro/consts/container.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/consts/text_field.dart';
import 'package:reelpro/models/feed_comment_list.dart';
import 'package:reelpro/models/feed_details.dart';
import 'package:get/get.dart';
import 'package:reelpro/view_models/add_comment_feed.dart';
import 'package:reelpro/view_models/delete_feed_comment.dart';
import 'package:reelpro/view_models/feed_comment_list.dart';
import 'package:reelpro/view_models/feed_details.dart';
import 'package:reelpro/view_models/feed_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reelpro/view_models/like_feed.dart';
import 'package:reelpro/views/bottom_navigation.dart';
import 'package:reelpro/views/feed_comment_list.dart';
import '../models/feed_list.dart';

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
    var res = await FeedDetailsApi().getFeedDetails(widget.feedId);
    feedDetails = FeedDetails.fromJson(res.data);
    instance.isLiked.value = feedDetails!.data!.data!.first.isLiked!;
    instance.likeCount.value = feedDetails!.data!.data!.first.totalLikes!;
    instance.commentCount.value = feedDetails!.data!.data!.first.totalComments!;
    isLoading.value = false;
  }

  var commentList = <FeedCList>[].obs;
  getCommentListFinal() async {
    await commentInstance.getFeedCommentList(widget.feedId).then((value) {
      var resp = FeedCommentList.fromJson(value.data);
      commentList.clear();
      commentList.addAll(resp.data);
    });
  }

  final instance = Get.put(FeedDetailsApi());
  final likeFeed = Get.put(LikeFeedApi());
  final commentInstance = Get.put(FeedCommentListApi());
  final addCommentInstance = Get.put(AddCommentFeedApi());
  TextEditingController textEditingController = TextEditingController();
  final ScrollController scrollController = ScrollController();
  @override
  void initState() {
    getDetails();
    getCommentListFinal();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            toolbarHeight: 60.h,
            elevation: 0,
            backgroundColor: Colors.white,
            title: Padding(
                padding: EdgeInsets.only(top: 27.h),
                child: Text21PtBlack(text: 'Feed Details')),
            centerTitle: true,
            leading: Padding(
              padding: EdgeInsets.only(top: 27.h, left: 36.w),
              child: GestureDetector(
                onTap: () {
                  Get.to(() => BottomNavigation(currentIndex: 0));
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
            )),
        body: Obx(
          () => isLoading.value
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                  controller: scrollController,
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                top: 44.h, left: 36.w, right: 36.w),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    feedDetails!.data!.data!.first.feedUserInfo!
                                                .profilePic !=
                                            null
                                        ? ProfilePicContainer(
                                            image: NetworkImage(feedDetails!
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
                                                text: 'Mon, 12 September'),
                                            SizedBox(width: 10.w),
                                            SvgPicture.asset(
                                                'assets/images/Subtraction 1.svg'),
                                            SizedBox(width: 6.w),
                                            Text14PtTime(text: '9:00 AM'),
                                          ])
                                        ]),
                                    SizedBox(width: 30.w),
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 25.h),
                                        child: const Icon(Icons.more_horiz))
                                  ]),
                                  SizedBox(height: 24.h),
                                  Container(
                                      height: 45.h,
                                      child: Text16PtDesc(
                                          text: feedDetails!
                                              .data!.data!.first.description
                                              .toString())),
                                ])),
                        SizedBox(height: 10.h),
                        Container(
                            height: 210.h,
                            width: double.infinity,
                            child: PageView.builder(
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
                                top: 56.h, left: 36.w, right: 36.w),
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
                                    child: commentList.isEmpty
                                        ? Center(
                                            child: Padding(
                                            padding: EdgeInsets.only(top: 60.h),
                                            child: Text16PtBlack(
                                                text:
                                                    'Be First To Add Comment On Feed'),
                                          ))
                                        : Obx(() => ListView.builder(
                                            shrinkWrap: true,
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            itemCount: commentList.length,
                                            itemBuilder: (context, index) {
                                              return buildCommentList(
                                                  commentList[index]);
                                            })),
                                  )
                                ]))
                      ]),
                ),
        ),
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
                await addCommentInstance.addCommentFeed(
                    widget.feedId, textEditingController.text);
                await getCommentListFinal();
                textEditingController.clear();
                instance.commentCount.value++;
                scrollController.animateTo(
                  scrollController.position.maxScrollExtent,
                  curve: Curves.easeOut,
                  duration: const Duration(milliseconds: 200),
                );
              },
            ))));
  }
}
