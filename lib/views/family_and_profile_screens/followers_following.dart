import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/container.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/models/followers_list.dart';
import 'package:reelpro/view_models/register_user_request/edit_profile.dart';
import 'package:reelpro/view_models/team_and_profile_request/other_user_profile.dart';
import 'package:reelpro/views/bottom_navigation_screens/spotlight_screen.dart';
import 'package:get/get.dart';
import 'package:reelpro/views/family_and_profile_screens/other_user_profile.dart';

class FollowingUI extends StatefulWidget {
  const FollowingUI({super.key});

  @override
  State<FollowingUI> createState() => _FollowingUIState();
}

class _FollowingUIState extends State<FollowingUI> {
  final ep = Get.put(Editprofile());
  @override
  void initState() {
    ep.getFollowersListFinal();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF2F9FF),
        appBar: AppBar(
          title: Text21PtBlack(text: 'Following'),
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
        body: Obx(() => ep.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Obx(() => ep.list.isEmpty
                    ? Center(
                        child: Text16PtBlack(
                          text: 'No Data',
                        ),
                      )
                    : ListView.builder(
                        itemCount: ep.list.length,
                        itemBuilder: (context, index) {
                          return followingList1(ep.list[index]);
                        })))));
  }
}

Widget followingList1(Follower follower) {
  final otp = Get.put(OtherUserProfileApi());
  final ep = Get.put(Editprofile());
  final ff = Get.put(OtherUserProfileApi());
  return GestureDetector(
      onTap: () {
        Get.to(() => OtherUserProfileUI(userId: follower.id!.toInt()));
      },
      child: Padding(
          padding: EdgeInsets.only(left: 36.w, right: 36.w, bottom: 12.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(children: [
              follower.profilePic != null
                  ? ProfilePicContainer(
                      image: NetworkImage(follower.profilePic!))
                  : ProfilePicContainer(
                      image: const AssetImage('assets/images/profile.png')),
              SizedBox(width: 12.w),
              Center(
                child: Text16PtBlack(
                    text: '${follower.firstname} ${follower.lastname}'),
              )
            ]),
            Container(
              height: 40.h,
              width: 110.w,
              child: Button56(
                  onpressed: () async {
                    await otp.unfollowUser(follower.id!);
                    ff.follow.value--;
                    await ep.getFollowersListFinal();
                  },
                  buttonText: 'Unfollow',
                  textColor: Colors.black,
                  width: 1,
                  widthColor: Colors.black,
                  color: const Color(0xffF2F9FF)),
            )
          ])));
}

class FollowerUI extends StatefulWidget {
  const FollowerUI({super.key});

  @override
  State<FollowerUI> createState() => _FollowerUIState();
}

class _FollowerUIState extends State<FollowerUI> {
  final ep = Get.put(Editprofile());
  @override
  void initState() {
    ep.getFollowersListFinal1();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF2F9FF),
        appBar: AppBar(
          title: Text21PtBlack(text: 'Followers'),
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
        body: Obx(() => ep.isLoading1.value
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Obx(() => ep.list1.isEmpty
                    ? Center(
                        child: Text16PtBlack(
                          text: 'No Data',
                        ),
                      )
                    : ListView.builder(
                        itemCount: ep.list1.length,
                        itemBuilder: (context, index) {
                          return followingList2(ep.list1[index]);
                        })))));
  }
}

Widget followingList2(Follower follower) {
  final otp = Get.put(OtherUserProfileApi());
  final ep = Get.put(Editprofile());
  final ff = Get.put(OtherUserProfileApi());
  return GestureDetector(
      onTap: () {
        Get.to(() => OtherUserProfileUI(userId: follower.id!.toInt()));
      },
      child: Padding(
          padding: EdgeInsets.only(left: 36.w, right: 36.w, bottom: 12.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(children: [
              follower.profilePic != null
                  ? ProfilePicContainer(
                      image: NetworkImage(follower.profilePic!))
                  : ProfilePicContainer(
                      image: const AssetImage('assets/images/profile.png')),
              SizedBox(width: 12.w),
              Center(
                child: Text16PtBlack(
                    text: '${follower.firstname} ${follower.lastname}'),
              )
            ]),
            Container(
              height: 40.h,
              width: 110.w,
              child: Button56(
                  onpressed: () async {
                    await ep.getFollowersListFinal1();
                  },
                  buttonText: 'Remove',
                  textColor: Colors.black,
                  width: 1,
                  widthColor: Colors.black,
                  color: const Color(0xffF2F9FF)),
            )
          ])));
}
