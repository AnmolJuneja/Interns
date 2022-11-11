import 'package:flutter/material.dart';
import 'package:reelpro/consts/container.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/models/feed_comment_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reelpro/view_models/feed_and_catch_network_request/all_feed_request.dart';
import 'package:reelpro/views/catch_and_feed_screens/feed_details.dart';
// import 'package:reelpro/view_models/feed_and_catch_network_request/delete_feed_comment.dart';

Widget buildCommentList(BuildContext context, FeedCList feedCList) {
  final instanceDeleteComment = Get.put(AddFeedApi());

  return Obx(() => instanceDeleteComment.isLoading.value
      ? const Center(
          child: CircularProgressIndicator(),
        )
      : Container(
          padding: EdgeInsets.only(top: 19.h),
          child: Stack(children: [
            Row(children: [
              feedCList.commentUserInfo!.profilePic != null
                  ? ProfilePicContainerComment(
                      image:
                          NetworkImage(feedCList.commentUserInfo!.profilePic!))
                  : ProfilePicContainerComment(
                      image: const AssetImage('assets/images/profile.png')),
              SizedBox(width: 12.w),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text16PtBlue(
                    text:
                        '${feedCList.commentUserInfo!.firstname} ${feedCList.commentUserInfo!.lastname}'),
                SizedBox(height: 5.h),
                SizedBox(
                    width: 275.w, child: Text(feedCList.comment.toString()))
              ])
            ]),
            Positioned(
                bottom: 35.h,
                left: 320.w,
                child: GestureDetector(
                    onTap: () {
                      Get.bottomSheet(
                        Container(
                          padding: EdgeInsets.only(
                              top: 30.h, left: 36.w, right: 36.w),
                          height: 250.h,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25)),
                              color: Color(0xffF2F9FF)),
                          child: Column(children: [
                            instanceDeleteComment.userId == feedCList.userId
                                ? const Divider(thickness: 1)
                                : const SizedBox(),
                            SizedBox(height: 10.h),
                            instanceDeleteComment.userId == feedCList.userId
                                ? GestureDetector(
                                    onTap: () async {
                                      instanceDeleteComment
                                          .deleteFeedComment(feedCList.id!);

                                      Navigator.pop(context);
                                    },
                                    child:
                                        Text16PtBlack(text: 'Delete comment'))
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
          ])));
}
