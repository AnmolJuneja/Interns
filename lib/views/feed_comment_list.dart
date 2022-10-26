import 'package:flutter/material.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/container.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/models/feed_comment_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reelpro/view_models/delete_feed_comment.dart';

Widget buildCommentList(FeedCList feedCList) {
  final instanceDeleteComment = Get.put(DeleteFeedCommentApi());
  return Container(
      padding: EdgeInsets.only(top: 19.h),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(children: [
          feedCList.commentUserInfo!.profilePic != null
              ? ProfilePicContainerComment(
                  image: NetworkImage(feedCList.commentUserInfo!.profilePic!))
              : ProfilePicContainerComment(
                  image: const AssetImage('assets/images/profile.png')),
          SizedBox(width: 12.w),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text16PtBlue(
                text:
                    '${feedCList.commentUserInfo!.firstname} ${feedCList.commentUserInfo!.lastname}'),
            SizedBox(height: 5.h),
            Container(width: 275.w, child: Text(feedCList.comment.toString()))
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
                              onpressed: () {
                                instanceDeleteComment
                                    .deleteFeedComment(feedCList.id!.toInt());
                                
                              },
                              buttonText: 'Delete Comment')
                        ]),
                  ));
                },
                child: Icon(Icons.more_horiz)))
      ]));
}
