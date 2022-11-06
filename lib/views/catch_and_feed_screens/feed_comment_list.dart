import 'package:flutter/material.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/container.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/models/feed_comment_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reelpro/view_models/feed_and_catch_network_request/all_feed_request.dart';
// import 'package:reelpro/view_models/feed_and_catch_network_request/delete_feed_comment.dart';

Widget buildCommentList(FeedCList feedCList) {
  final instanceDeleteComment = Get.put(AddFeedApi());
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
            padding: EdgeInsets.only(bottom: 15.h),
            child: GestureDetector(
                onTap: () {},
                child: const Icon(Icons.more_horiz, color: Colors.black)))
      ]));
}
