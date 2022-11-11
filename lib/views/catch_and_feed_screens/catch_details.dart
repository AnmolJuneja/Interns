import 'package:flutter/material.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/container.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/consts/text_field.dart';
import 'package:reelpro/controllers/feed_and_catch_controllers.dart';
import 'package:reelpro/models/catch_details.dart';
import 'package:reelpro/models/comment_list.dart';
import 'package:get/get.dart';
import 'package:reelpro/view_models/feed_and_catch_network_request/all_catchlog_request.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reelpro/views/bottom_navigation_screens/bottom_navigation.dart';

class CatchDetailsUI extends StatefulWidget {
  final int catchId;
  const CatchDetailsUI({Key? key, required this.catchId}) : super(key: key);

  @override
  State<CatchDetailsUI> createState() => _CatchDetailsUIState();
}

class _CatchDetailsUIState extends State<CatchDetailsUI> {
  CatchDetailsModel? catchDetails;
  var isLoading = false.obs;
  Future<void> getDetails() async {
    isLoading.value = true;
    var res = await AddCatchlogApi().getCatchDetails(widget.catchId);
    catchDetails = CatchDetailsModel.fromJson(res.data);
    AddFeedApi1().isLiked1.value = catchDetails!.data!.isLiked!;
    AddFeedApi1().likeCount1.value = catchDetails!.data!.totalLikes!;
    AddFeedApi1().commentCount1.value = catchDetails!.data!.totalComments!;
    isLoading.value = false;
  }

  var commentList = <CommentList>[].obs;
  getCommentListFinal() async {
    AddCatchlogApi()
      ..getCommentList(widget.catchId).then((value) {
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
            // toolbarHeight: 70.h,
            elevation: 0,
            backgroundColor: Colors.white,
            title: Text21PtBlack(text: 'Catch Details'),
            centerTitle: true,
            leading: Padding(
              padding: EdgeInsets.only(left: 36.w),
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
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 36.w, right: 36.w),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(children: [
                                          catchDetails!.data!.userDetail!
                                                      .profilePic ==
                                                  null
                                              ? ProfilePicContainer(
                                                  image: const AssetImage(
                                                      'assets/images/profile.png'))
                                              : ProfilePicContainer(
                                                  image: NetworkImage(
                                                      catchDetails!
                                                          .data!
                                                          .userDetail!
                                                          .profilePic)),
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
                                            child: const Icon(Icons.more_horiz))
                                      ]),
                                  SizedBox(height: 24.h),
                                  SizedBox(
                                      height: 45.h,
                                      child: Text16PtDesc(
                                          text: catchDetails!.data!.comment
                                              .toString())),
                                ])),
                        SizedBox(height: 10.h),
                        SizedBox(
                            height: 429.h,
                            width: double.infinity,
                            child: Image.network(catchDetails!.data!.pic!,
                                fit: BoxFit.cover)),
                        Padding(
                            padding: EdgeInsets.only(
                                top: 20.h, left: 36.w, right: 36.w),
                            child: Row(children: [
                              LikeIcon(
                                  onTap: () {
                                    AddFeedApi1().isLiked1.value = true;
                                    AddCatchlogApi()
                                        .likeCatchlog(widget.catchId);
                                    AddFeedApi1().likeCount1.value++;
                                  },
                                  onTap1: () {
                                    AddFeedApi1().isLiked1.value = false;
                                    AddCatchlogApi()
                                        .likeCatchlog(widget.catchId);
                                    AddFeedApi1().likeCount1.value--;
                                  },
                                  isliked: AddFeedApi1().isLiked1.value),
                              SizedBox(width: 8.w),
                              Text14PtBlue(
                                  text: AddFeedApi1()
                                      .likeCount1
                                      .value
                                      .toString()),
                              SizedBox(width: 44.w),
                              const CommentIcon(),
                              SizedBox(width: 8.w),
                              Text14Pt58(
                                  text: AddFeedApi1()
                                      .commentCount1
                                      .value
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
                                                    'Be First To Add Comment On Catch'),
                                          ))
                                        : Obx(() => ListView.builder(
                                            shrinkWrap: true,
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            itemCount: commentList.length,
                                            itemBuilder: (context, index) {
                                              return buildCatchComment(
                                                  context, commentList[index]);
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
                      await AddCatchlogApi().addComment(
                          widget.catchId, textEditingController.text);
                      await getCommentListFinal();
                      textEditingController.clear();
                      AddFeedApi1().commentCount1.value++;
                      scrollController.animateTo(
                        scrollController.position.maxScrollExtent,
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 200),
                      );
                    }))));
  }
}

Widget buildCatchComment(BuildContext context, CommentList commentList) {
  return Container(
      padding: EdgeInsets.only(top: 19.h),
      child: Stack(children: [
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
            SizedBox(width: 275.w, child: Text(commentList.comment.toString()))
          ])
        ]),
        Positioned(
            bottom: 35.h,
            left: 320.w,
            child: GestureDetector(
                onTap: () {
                  Get.bottomSheet(
                    Container(
                      padding:
                          EdgeInsets.only(top: 30.h, left: 36.w, right: 36.w),
                      height: 250.h,
                      decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(25)),
                          color: Color(0xffF2F9FF)),
                      child: Column(children: [
                        commentList.userId == commentList.userId
                            ? const Divider(thickness: 1)
                            : const SizedBox(),
                        SizedBox(height: 10.h),
                        commentList.userId == commentList.userId
                            ? GestureDetector(
                                onTap: () async {
                               
                                },
                                child: Text16PtBlack(text: 'Delete comment'))
                            : const SizedBox(),
                        SizedBox(height: 10.h),
                        const Divider(thickness: 1),
                        SizedBox(height: 10.h),
                        Text16PtBlack(text: 'Report Comment'),
                        SizedBox(height: 10.h),
                        const Divider(thickness: 1)
                      ]),
                    ),
                  );
                },
                child: const Icon(Icons.more_horiz, color: Colors.black)))
      ]));
}
