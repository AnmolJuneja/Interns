import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reelpro/consts/appbar.dart';
import 'package:reelpro/consts/team_view.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/models/add_feed.dart';
// import 'package:reelpro/models/create_team.dart';
import 'package:reelpro/models/view_team.dart';
import 'package:reelpro/view_models/team_and_profile_request/create_team.dart';
// import 'package:reelpro/view_models/team_and_profile_request/view_team.dart';
import 'package:reelpro/views/team_screens/about_group.dart';
import 'package:reelpro/views/catch_and_feed_screens/add_catch_log.dart';
import 'package:reelpro/views/catch_and_feed_screens/add_feed.dart';
import 'package:reelpro/views/team_screens/invite_team_members.dart';
import 'package:reelpro/views/team_screens/pending_request.dart';
import 'package:reelpro/views/team_screens/report_group.dart';
import 'package:reelpro/views/team_screens/team_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewTeam extends StatelessWidget {
  const ViewTeam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewTeam = Get.put(CreateTeamApi());
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 30.w, top: 42.h),
              child: GestureDetector(
                  onTap: () {
                    Get.bottomSheet(
                        Container(
                          padding: EdgeInsets.only(top: 48.h, left: 36.w),
                          height: 553.h,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25)),
                              color: Color(0xffF2F9FF)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text15PtBlue(text: 'Options'),
                                SizedBox(height: 44.h),
                                GestureDetector(
                                    onTap: () {
                                      Get.to(() => const AboutGroupUI());
                                    },
                                    child: Text16PtBlack(text: 'About Group')),
                                SizedBox(height: 44.h),
                                GestureDetector(
                                    onTap: () {
                                      Get.to(() => const PendingRequestUI());
                                    },
                                    child: Text16PtBlack(
                                        text: 'Pending Requests')),
                                SizedBox(height: 44.h),
                                Text16PtBlack(text: 'Share Group'),
                                SizedBox(height: 44.h),
                                GestureDetector(
                                    onTap: () {
                                      Get.to(() => const AddFeedConst());
                                    },
                                    child: Text16PtBlack(text: 'Add Feed')),
                                SizedBox(height: 44.h),
                                GestureDetector(
                                    onTap: () {
                                      Get.to(() => const AddCatchLogUI());
                                    },
                                    child: Text16PtBlack(text: 'Log a Catch')),
                                SizedBox(height: 44.h),
                                GestureDetector(
                                    onTap: () {
                                      Get.to(() => const ReportGroupUI());
                                    },
                                    child: Text16PtBlack(text: 'Report Group'))
                              ]),
                        ),
                        isScrollControlled: true);
                  },
                  child: const Icon(Icons.more_vert, color: Colors.black)))
        ],
        title: Padding(
            padding: EdgeInsets.only(top: 42.h),
            child: Text21PtBlack(text: 'Giant Trevally')),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        // toolbarHeight: 70.h,
        leading: Padding(
            padding: EdgeInsets.only(top: 42.h, left: 36.w),
            child: GestureDetector(
                onTap: () {
                  Get.to(() => const TeamViewView());
                },
                child: const Icon(Icons.arrow_back_ios, color: Colors.black))),
      ),
      backgroundColor: const Color(0xffF2F9FF),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UpperView(
              image: 'assets/images/y1.png',
              location: 'location',
              post: '20',
              members: '2',
              pendingRequests: '0',
              btn1Text: 'Info',
              btn2Text: 'Edit/Request to Join',
              onpressed: () {
                Get.to(() => const InviteMembersUI());
              },
            ),
            TeamViewColumn(
              title: 'Group Feeds',
              image: 'assets/images/fornewdesigner.png',
              text: 'Edward Clark',
              text1: 'Wed, 12 January',
              text2: '9:00 AM',
              text3:
                  "This year's Texas Fly Fishing & Brew Festival is held inside the spacious Mesquite co...",
              image1: 'assets/images/9.png',
              image2: 'assets/images/for designer.png',
              image3: 'assets/images/fish.png',
              image4: 'assets/images/for designer.png',
              textLike: 'John, Enna and 82 others',
              likeImage: 'assets/images/Group 205.png',
              likeText: '84',
              commentImage: 'assets/images/Group 206.png',
              commentText: '12',
              shareImage: 'assets/images/Group 207.png',
            ),
          ],
        ),
      ),
    );
  }
}
