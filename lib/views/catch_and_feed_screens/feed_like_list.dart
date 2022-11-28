import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reelpro/consts/container.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/models/feed_like_list.dart';
import 'package:reelpro/view_models/feed_and_catch_network_request/all_feed_request.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeedLikeListUI extends StatefulWidget {
  final int feedId;
  const FeedLikeListUI({super.key, required this.feedId});

  @override
  State<FeedLikeListUI> createState() => _FeedLikeListUIState();
}

class _FeedLikeListUIState extends State<FeedLikeListUI> {
  final afa = Get.put(AddFeedApi());
  @override
  void initState() {
    afa.getLikeListFinal(widget.feedId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text21PtBlack(text: 'Feed Like List'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: const Color(0xffF2F9FF),
          leading: Padding(
              padding: EdgeInsets.only(left: 36.w),
              child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child:
                      const Icon(Icons.arrow_back_ios, color: Colors.black))),
        ),
        backgroundColor: Color(0xffF2F9FF),
        body: Obx(() => afa.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Obx(() => afa.list.isEmpty
                    ? Center(
                        child: Text16PtBlack(
                          text: 'No Data',
                        ),
                      )
                    : ListView.builder(
                        itemCount: afa.list.length,
                        itemBuilder: (context, index) {
                          return feedLikeList(afa.list[index]);
                        })))));
  }
}

Widget feedLikeList(FeedLike feedLike) {
  return Padding(
    padding: EdgeInsets.only(bottom: 12.h, left: 36.w, right: 36.w),
    child: Row(children: [
      feedLike.user!.profilePic == null
          ? ProfilePicContainer(
              image: const AssetImage('assets/images/profile.png'))
          : ProfilePicContainer(
              image: NetworkImage(feedLike.user!.profilePic!)),
      SizedBox(width: 12.w),
      Center(
        child: Text16PtBlack(
            text: '${feedLike.user!.firstname} ${feedLike.user!.lastname}'),
      )
    ]),
  );
}
