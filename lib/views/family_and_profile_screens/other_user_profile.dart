import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/container.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/models/user_feed_list.dart';
import 'package:reelpro/models/view_profile.dart';
import 'package:reelpro/view_models/feed_and_catch_network_request/all_feed_request.dart';
import 'package:reelpro/view_models/team_and_profile_request/other_user_profile.dart';
// import 'package:reelpro/view_models/feed_and_catch_network_request/user_feed_list.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reelpro/views/bottom_navigation_screens/bottom_navigation.dart';

class OtherUserProfileUI extends StatefulWidget {
  final int userId;
  const OtherUserProfileUI({Key? key, required this.userId}) : super(key: key);

  @override
  State<OtherUserProfileUI> createState() => _OtherUserProfileUIState();
}

class _OtherUserProfileUIState extends State<OtherUserProfileUI> {
  final instance = Get.put(AddFeedApi());
  final instance1 = Get.put(OtherUserProfileApi());
  var isLoading = false.obs;
  ViewProfile? viewProfile;
  Future<void> getUserProfileFinal() async {
    isLoading.value = true;
    var resp = await instance1.getUserProfile(widget.userId);
    viewProfile = ViewProfile.fromJson(resp.data);
    isLoading.value = false;
    viewProfile!.data!.isFollowing == 'true'
        ? buttonVar.value = true
        : buttonVar.value = false;
    userFollowers.value = viewProfile!.data!.followers!;
  }

  var buttonVar = false.obs;
  var userFollowers = 0.obs;
  UserFeedList? myFeedList;
  Future<UserFeedList> getMyFeedListFinal(int id) async {
    // isLoading.value = true;
    var resp = await instance.getUserFeedList(id);
    myFeedList = UserFeedList.fromJson(resp.data);
    isLoading.value = false;
    return myFeedList!;
  }

  @override
  void initState() {
    getUserProfileFinal();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF2F9FF),
        appBar: AppBar(
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 36.w),
                child: GestureDetector(
                  onTap: () {
                    Get.bottomSheet(Container(
                      padding:
                          EdgeInsets.only(top: 48.h, left: 36.w, right: 36.w),
                      height: 370.h,
                      decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(25)),
                          color: Color(0xffF2F9FF)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text15PtBlue(text: 'Other options'),
                            SizedBox(height: 44.h),
                            GestureDetector(
                                onTap: () {
                                  if (buttonVar.value) {
                                    instance1.unfollowUser(
                                        viewProfile!.data!.id!.toInt());
                                    userFollowers.value--;
                                    buttonVar.value = false;
                                  } else {
                                    null;
                                  }
                                },
                                child: Text16PtBlack(text: 'Unfollow')),
                            SizedBox(height: 42.h),
                            Text16PtBlack(text: 'Block'),
                            SizedBox(height: 42.h),
                            Text16PtBlack(text: 'Report'),
                            SizedBox(height: 42.h),
                            Text16PtBlack(text: 'Share This Profile')
                          ]),
                    ));
                  },
                  child: const Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ),
                ))
          ],
          elevation: 0,
          backgroundColor: const Color(0xffF2F9FF),
          leading: Padding(
              padding: EdgeInsets.only(left: 36.w),
              child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                BottomNavigation(currentIndex: 1)));
                  },
                  child:
                      const Icon(Icons.arrow_back_ios, color: Colors.black))),
        ),
        body: Obx(() => isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding: EdgeInsets.only(top: 17.h, left: 36.w, right: 36.w),
                child: SingleChildScrollView(
                  child: Column(children: [
                    Row(
                      children: [
                        viewProfile!.data!.profilePic != null
                            ? ProfilePic(
                                image: NetworkImage(
                                    viewProfile!.data!.profilePic!))
                            : ProfilePic(
                                image: const AssetImage(
                                    'assets/images/profile.png')),
                        SizedBox(width: 16.w),
                        Padding(
                          padding: EdgeInsets.only(top: 17.h),
                          child: Center(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                Text21PtBlack(
                                    text:
                                        '${viewProfile!.data!.firstname} ${viewProfile!.data!.lastname}'),
                                SizedBox(height: 8.h),
                                Text14PtTime(text: 'Member since Oct 2020'),
                                SizedBox(height: 12.h),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/images/Group 182.svg'),
                                    SizedBox(width: 15.w),
                                    SvgPicture.asset(
                                        'assets/images/Group 127.svg')
                                  ],
                                )
                              ])),
                        )
                      ],
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      height: 60.h,
                      width: 356.w,
                      child: Text14ptDesc(
                          text: '${viewProfile!.data!.description}'),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 41.w, right: 41.w, top: 22.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text20PtBold(text: '0'),
                            Text20PtBold(text: userFollowers.toString()),
                            Text20PtBold(
                                text: viewProfile!.data!.following.toString())
                          ]),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 6.h, left: 18.w, right: 18.w),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text14ptOpacity50(text: ' Rewards'),
                            Text14ptOpacity50(text: 'Followers'),
                            Text14ptOpacity50(text: 'Following')
                          ]),
                    ),
                    SizedBox(height: 30.h),
                    buttonVar.value
                        ? MyButton(
                            onpressed: () {
                              instance1
                                  .unfollowUser(viewProfile!.data!.id!.toInt());
                              userFollowers.value--;
                              buttonVar.value = false;
                            },
                            buttonText: 'Unfollow')
                        : MyButton(
                            onpressed: () {
                              buttonVar.value = true;
                              instance1
                                  .followUser(viewProfile!.data!.id!.toInt());
                              userFollowers.value++;
                            },
                            buttonText: 'Follow'),
                    SizedBox(height: 17.h),
                    Container(
                        child: FutureBuilder<UserFeedList>(
                            future: getMyFeedListFinal(widget.userId),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return GridView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            mainAxisSpacing: 16.h,
                                            crossAxisSpacing: 16.w,
                                            crossAxisCount: 2),
                                    itemCount: myFeedList!.data!.data!.length,
                                    itemBuilder: (context, index) {
                                      return buildFeedImages(
                                          myFeedList!.data!.data![index]);
                                    });
                              } else {
                                return const Center(
                                    child: CircularProgressIndicator());
                              }
                            }))
                  ]),
                ),
              )));
  }
}

Widget buildFeedImages(UserList userList) {
  return Container(
      height: 170.h,
      width: 170.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(userList.getFeedImages![0].pic!))));
}
