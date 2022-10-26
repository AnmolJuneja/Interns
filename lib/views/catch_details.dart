import 'package:flutter/material.dart';
import 'package:reelpro/consts/appbar.dart';
import 'package:reelpro/consts/catch_details.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/consts/text_field.dart';
import 'package:reelpro/models/catch_details.dart';
import 'package:reelpro/models/comment_list.dart';
import 'package:reelpro/view_models/add_comment.dart';
import 'package:reelpro/view_models/catch_details.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/view_models/comment_list.dart';

class CatchDetailsUI extends StatefulWidget {
  final int catchId;
  const CatchDetailsUI({Key? key, required this.catchId}) : super(key: key);

  @override
  State<CatchDetailsUI> createState() => _CatchDetailsUIState();
}

class _CatchDetailsUIState extends State<CatchDetailsUI> {
  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    CatchDetailsApi catchDetailsApi = Get.put(CatchDetailsApi());
    CommentListApi commentListApi = Get.put(CommentListApi());
    AddCommentApi addCommentApi = Get.put(AddCommentApi());
    final ScrollController scrollController = ScrollController();
    final commentList = Get.put(CommentList());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        controller: scrollController,
        // physics: NeverScrollableScrollPhysics(),
        child: Column(children: [
          AppBarCatchDetails(
              ontap: () {},
              ontap1: () {},
              firstIcon: Icons.arrow_back_ios,
              title: 'Catch Details'),
          SingleChildScrollView(
              // physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                FutureBuilder<CatchDetailsModel>(
                    future: catchDetailsApi.getDetails(widget.catchId),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CatchDetailsConst(
                                profileImage:
                                    snapshot.data!.data!.userDetail!.profilePic,
                                firstName: snapshot
                                    .data!.data!.userDetail!.firstname
                                    .toString(),
                                lastName: snapshot
                                    .data!.data!.userDetail!.lastname
                                    .toString(),
                                dayText: 'Wed, 12 January',
                                timeText: '9:00 AM',
                                descriptionText: snapshot
                                    .data!.data!.userDetail!.description
                                    .toString(),
                                centerImage: snapshot.data!.data!.pic!,
                                likeText: 'John, Enna and 82 others',
                                totalComments: snapshot
                                    .data!.data!.totalComments
                                    .toString(),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 25.h, left: 36.w, right: 36.w),
                                  child: Text20PtComment(text: 'Comments')),
                            ]);
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    }),
                Padding(
                  padding: EdgeInsets.only(left: 36.w, right: 36.w),
                  child: FutureBuilder(
                      future: commentListApi.getCommentListFinal(),
                      builder: (context, snapshot) {
                        return Obx(() => ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: commentListApi.commentList.length,
                            itemBuilder: (context, index) {
                              return buildList(
                                  commentListApi.commentList[index]);
                            }));
                      }),
                )
              ]))
        ]),
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
              scrollController.animateTo(
                scrollController.position.maxScrollExtent,
                curve: Curves.easeOut,
                duration: const Duration(milliseconds: 200),
              );
              addCommentApi.addComment(1, textEditingController.text);
              await commentListApi.getCommentListFinal();
              textEditingController.clear();
            },
          ))),
    );
  }
}

Widget buildList(CommentList commentList) {
  return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
    commentList.commentUserInfo!.profilePic != null
        ? Container(
            margin: EdgeInsets.only(bottom: 25.h),
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: const Color(0xff909090)),
                image: DecorationImage(
                    image:
                        NetworkImage(commentList.commentUserInfo!.profilePic))))
        : Container(
            margin: EdgeInsets.only(bottom: 25.h),
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: const Color(0xff909090)),
                image: const DecorationImage(
                    image: AssetImage('assets/images/profile.png')))),
    SizedBox(width: 12.w),
    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text16PtBlue(text: 'Sagar Dawra'),
      SizedBox(height: 5.h),
      Text16PtDesc(text: commentList.comment.toString())
    ])
  ]);
}
