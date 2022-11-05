import 'package:flutter/material.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/container.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/consts/text_field.dart';
import 'package:reelpro/models/catch_details.dart';
import 'package:reelpro/models/comment_list.dart';
import 'package:reelpro/models/feed_comment_list.dart';
import 'package:reelpro/models/feed_details.dart';
import 'package:get/get.dart';
import 'package:reelpro/view_models/add_comment.dart';
import 'package:reelpro/view_models/add_comment_feed.dart';
import 'package:reelpro/view_models/catch_details.dart';
import 'package:reelpro/view_models/comment_list.dart';
import 'package:reelpro/view_models/delete_feed_comment.dart';
import 'package:reelpro/view_models/feed_comment_list.dart';
import 'package:reelpro/view_models/feed_details.dart';
import 'package:reelpro/view_models/feed_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reelpro/view_models/like_catchlog.dart';
import 'package:reelpro/view_models/like_feed.dart';
import 'package:reelpro/views/bottom_navigation.dart';
import 'package:reelpro/views/feed_comment_list.dart';
import '../models/feed_list.dart';

class CatchDetailsUI extends StatefulWidget {
  final int catchId;
  const CatchDetailsUI({Key? key, required this.catchId}) : super(key: key);

  @override
  State<CatchDetailsUI> createState() => _CatchDetailsUIState();
}

class _CatchDetailsUIState extends State<CatchDetailsUI> {
  final commentListApi = Get.put(CommentListApi());
  final addCommentInstance = Get.put(AddCommentApi());
  LikeCatchlogApi likeCatchlogApi = Get.put(LikeCatchlogApi());
  CatchDetailsModel? catchDetails;
  var isLoading = false.obs;
  Future<void> getDetails() async {
    isLoading.value = true;
    var res = await CatchDetailsApi().getCatchDetails(widget.catchId);
    catchDetails = CatchDetailsModel.fromJson(res.data);
    commentListApi.isLiked.value = catchDetails!.data!.isLiked!;
    commentListApi.likeCount.value = catchDetails!.data!.totalLikes!;
    commentListApi.commentCount.value = catchDetails!.data!.totalComments!;
    isLoading.value = false;
  }

  var commentList = <CommentList>[].obs;
  getCommentListFinal() async {
    await commentListApi.getCommentList(widget.catchId).then((value) {
      var resp = CommentListRespone.fromJson(value.data);
      commentList.clear();
      commentList.addAll(resp.data);
    });
  }

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
            toolbarHeight: 70.h,
            elevation: 0,
            backgroundColor: Colors.white,
            title: Padding(
                padding: EdgeInsets.only(top: 42.h),
                child: Text21PtBlack(text: 'Catch Details')),
            centerTitle: true,
            leading: Padding(
              padding: EdgeInsets.only(top: 42.h, left: 36.w),
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
                                    catchDetails!
                                                .data!.userDetail!.profilePic ==
                                            null
                                        ? ProfilePicContainer(
                                            image: const AssetImage(
                                                'assets/images/profile.png'))
                                        : ProfilePicContainer(
                                            image: NetworkImage(catchDetails!
                                                .data!.userDetail!.profilePic)),
                                    SizedBox(width: 12.w),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text20PtBlue(
                                              text:
                                                  '${catchDetails!.data!.userDetail!.firstname} ${catchDetails!.data!.userDetail!.lastname}'),
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
                                          text: catchDetails!.data!.comment
                                              .toString())),
                                ])),
                        SizedBox(height: 10.h),
                        Container(
                            height: 210.h,
                            width: double.infinity,
                            child: Image.network(catchDetails!.data!.pic!,
                                fit: BoxFit.cover)),
                        Padding(
                            padding: EdgeInsets.only(
                                top: 56.h, left: 36.w, right: 36.w),
                            child: Row(children: [
                              LikeIcon(
                                  onTap: () {
                                    commentListApi.isLiked.value = true;
                                    likeCatchlogApi
                                        .likeCatchlog(widget.catchId);
                                    commentListApi.likeCount.value++;
                                  },
                                  onTap1: () {
                                    commentListApi.isLiked.value = false;
                                    likeCatchlogApi
                                        .likeCatchlog(widget.catchId);
                                    commentListApi.likeCount.value--;
                                  },
                                  isliked: commentListApi.isLiked.value),
                              SizedBox(width: 8.w),
                              Text14PtBlue(
                                  text: commentListApi.likeCount.value
                                      .toString()),
                              SizedBox(width: 44.w),
                              const CommentIcon(),
                              SizedBox(width: 8.w),
                              Text14Pt58(
                                  text: commentListApi.commentCount.value
                                      .toString()),
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
                                              return buildCatchComment(
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
                      await addCommentInstance.addComment(
                          widget.catchId, textEditingController.text);
                      await getCommentListFinal();
                      textEditingController.clear();
                      commentListApi.commentCount.value++;
                      scrollController.animateTo(
                        scrollController.position.maxScrollExtent,
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 200),
                      );
                    }))));
  }
}

Widget buildCatchComment(CommentList commentList) {
  return Container(
      padding: EdgeInsets.only(top: 19.h),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(children: [
          commentList.commentUserInfo!.profilePic != null
              ? ProfilePicContainerComment(
                  image: NetworkImage(commentList.commentUserInfo!.profilePic!))
              : ProfilePicContainerComment(
                  image: const AssetImage('assets/images/profile.png')),
          SizedBox(width: 12.w),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text16PtBlue(
                text:
                    '${commentList.commentUserInfo!.firstname} ${commentList.commentUserInfo!.lastname}'),
            SizedBox(height: 5.h),
            Container(width: 275.w, child: Text(commentList.comment.toString()))
          ])
        ]),
        Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: GestureDetector(
                onTap: () {
                  Get.bottomSheet(Container(
                    height: 150.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xffF2F9FF),
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(25))),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyButtonGrey(
                              onpressed: () {}, buttonText: 'Delete Comment')
                        ]),
                  ));
                },
                child: Icon(Icons.more_horiz)))
      ]));
}
