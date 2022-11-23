import 'package:flutter/material.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/container.dart';
import 'package:reelpro/consts/post.dart';
import 'package:reelpro/consts/text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/text_fieldc.dart';
import 'package:get/get.dart';
import 'package:reelpro/consts/toggle_container.dart';
import 'package:reelpro/controllers/feed_and_catch_controllers.dart';
import 'package:reelpro/models/edit_profile.dart';
import 'package:reelpro/models/followers_list.dart';
import 'package:reelpro/models/search_user.dart';
import 'package:reelpro/view_models/register_user_request/edit_profile.dart';
import 'package:reelpro/view_models/team_and_profile_request/search_user.dart';
import 'package:reelpro/views/family_and_profile_screens/other_user_profile.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SpotlightScreen extends StatefulWidget {
  const SpotlightScreen({Key? key}) : super(key: key);

  @override
  State<SpotlightScreen> createState() => _SpotlightScreenState();
}

class _SpotlightScreenState extends State<SpotlightScreen> {
  var valueOfList = ''.obs;

  TextEditingController textEditingController = TextEditingController();
  final instance = Get.put(SearchUserApi());
  final ep = Get.put(Editprofile());
  var isSwitched = false.obs;
  @override
  void initState() {
    ep.getFollowersListFinal();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xffF2F9FF),
            elevation: 0,
            centerTitle: false,
            title: Padding(
                padding: EdgeInsets.only(top: 26.h, bottom: 20.h, left: 24.w),
                child: Text30ptBlue(text: 'Explore')),
          ),
          backgroundColor: const Color(0xffF2F9FF),
          body: Column(children: [
            Padding(
                padding: EdgeInsets.only(top: 24.h, left: 36.w, right: 32.w),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextFSpotlight(
                                onTap: () {
                                  textEditingController.text = '';
                                },
                                textEditingController: textEditingController,
                                hintText: 'Search',
                                textInputType: TextInputType.text,
                                prefix: null,
                                onchanged: (value) {
                                  userSearch();
                                }),
                            GestureDetector(
                                onTap: () {
                                  Get.bottomSheet(
                                    Container(
                                      padding: EdgeInsets.only(top: 48.h),
                                      height: 478.h,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(25)),
                                          color: Color(0xffF2F9FF)),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 36.w),
                                                child: Text15PtBlue(
                                                    text: 'View Post by')),
                                            SizedBox(height: 20.h),
                                            ListView(
                                              shrinkWrap: true,
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              children: registerationType
                                                  .map(
                                                    (e) => GestureDetector(
                                                        onTap: () {
                                                          valueOfList.value = e;
                                                        },
                                                        child: Obx(() => ToggleContainer(
                                                            color: valueOfList
                                                                        .value ==
                                                                    e
                                                                ? AddFeedApi1()
                                                                    .selectedItemcolor
                                                                    .value
                                                                : AddFeedApi1()
                                                                    .transparentColor
                                                                    .value,
                                                            isSelected:
                                                                valueOfList.value ==
                                                                        e
                                                                    ? true
                                                                    : false,
                                                            text: e))),
                                                  )
                                                  .toList(),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: 10.h,
                                                  left: 36.w,
                                                  right: 36.w),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const Divider(thickness: 1),
                                                    SizedBox(height: 10.h),
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text14Pt(
                                                              text:
                                                                  'Tagged Location'),
                                                          Obx(() =>
                                                              FlutterSwitch(
                                                                activeColor:
                                                                    const Color(
                                                                        0xff2B67A3),
                                                                value:
                                                                    isSwitched
                                                                        .value,
                                                                onToggle:
                                                                    (value) {
                                                                  setState(() {
                                                                    isSwitched
                                                                            .value =
                                                                        value;
                                                                  });
                                                                },
                                                              ))
                                                        ]),
                                                    SizedBox(height: 10.h),
                                                    const Divider(thickness: 1),
                                                    SizedBox(height: 20.h),
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Button56(
                                                              onpressed: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              buttonText:
                                                                  'Remove',
                                                              textColor:
                                                                  Colors.black,
                                                              width: 1,
                                                              widthColor:
                                                                  Colors.black,
                                                              color: const Color(
                                                                  0xffF2F9FF)),
                                                          Button56Blue(
                                                              onpressed: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              buttonText:
                                                                  'Apply',
                                                              textColor:
                                                                  const Color(
                                                                      0xffF2F9FF),
                                                              color: const Color(
                                                                  0xff2B67A3))
                                                        ])
                                                  ]),
                                            )
                                          ]),
                                    ),
                                    isScrollControlled: true,
                                  );
                                },
                                child: isSwitched.value
                                    ? Image.asset(
                                        'assets/images/sort.png',
                                        height: 37.h,
                                        width: 37.w,
                                        color: const Color(0xff2B67A3),
                                      )
                                    : Image.asset(
                                        'assets/images/Group 209.png')),
                          ]),
                      SizedBox(height: 25.h),
                    ])),
            const TabBar(
              indicatorWeight: 2.0,
              isScrollable: false,
              indicatorSize: TabBarIndicatorSize.tab,
              automaticIndicatorColorAdjustment: true,
              // automaticIndicatorColorAdjustment: false,
              indicatorColor: Color(0xff2B67A3),
              labelColor: Color(0xff2B67A3),
              // ignore: use_full_hex_values_for_flutter_colors
              unselectedLabelColor: Color(0xff485058),
              tabs: [Tab(text: 'Spotlight'), Tab(text: 'Members')],
            ),
            Flexible(
              child: SizedBox(
                width: double.infinity,
                height: 650.h,
                child: TabBarView(children: [
                  SingleChildScrollView(
                      child: Padding(
                          padding: EdgeInsets.only(
                              top: 24.h, left: 36.w, right: 36.w),
                          child: Column(children: [
                            Post(
                                image: 'assets/images/Layer 2.png',
                                text: 'Team FishOn',
                                text1: '5d ago',
                                text2: 'North Atlantic Ocean',
                                text3:
                                    'Merry Christmas! May 2022 be the best year yet! Get out there and fish!',
                                image1: 'assets/images/bitmap1.png',
                                image2: 'assets/images/for designer.png',
                                image3: 'assets/images/for designer.png',
                                image4: 'assets/images/for designer.png',
                                textLike: 'John, Enna and 82 others',
                                commentImage: 'assets/images/Group 206.png',
                                commentText: '12',
                                shareImage: 'assets/images/Group 207.png'),
                            SizedBox(height: 24.h),
                            Post(
                                image: 'assets/images/Layer 2.png',
                                text: 'Team FishOn',
                                text1: '5d ago',
                                text2: 'North Atlantic Ocean',
                                text3:
                                    'Merry Christmas! May 2022 be the best year yet! Get out there and fish!',
                                image1: 'assets/images/bitmap1.png',
                                image2: 'assets/images/for designer.png',
                                image3: 'assets/images/for designer.png',
                                image4: 'assets/images/for designer.png',
                                textLike: 'John, Enna and 82 others',
                                commentImage: 'assets/images/Group 206.png',
                                commentText: '12',
                                shareImage: 'assets/images/Group 207.png')
                          ]))),
                  Obx(() => instance.getUserLength.length == 0
                      ? ListView.builder(
                          itemCount: ep.list.length,
                          itemBuilder: (context, index) {
                            return followingList(ep.list[index]);
                          })
                      : ListView.builder(
                          itemCount: instance.getUserLength.length,
                          itemBuilder: (context, index) {
                            return search(instance.getUserLength[index]);
                          }))
                ]),
              ),
            )
          ])),
    );
  }

  userSearch() async {
    await instance.searchUserFinal(textEditingController.text);
  }

  final List<String> registerationType = ['Ascending', 'Descending'];
}

Widget search(ListOfUser listOfUser) {
  return GestureDetector(
      onTap: () {
        Get.to(() => OtherUserProfileUI(userId: listOfUser.id!.toInt()));
      },
      child: Padding(
        padding: EdgeInsets.only(left: 36.w, right: 36.w, bottom: 12.h),
        child: Row(
          children: [
            listOfUser.profilePic != null
                ? ProfilePicContainer(
                    image: NetworkImage(listOfUser.profilePic!))
                : ProfilePicContainer(
                    image: const AssetImage('assets/images/profile.png')),
            SizedBox(width: 12.w),
            Center(
              child: Text16PtBlack(
                  text: '${listOfUser.firstname} ${listOfUser.lastname}'),
            )
          ],
        ),
      ));
}

Widget followingList(Follower follower) {
  return GestureDetector(
      onTap: () {
        Get.to(() => OtherUserProfileUI(userId: follower.id!.toInt()));
      },
      child: Padding(
          padding: EdgeInsets.only(left: 36.w, right: 36.w, bottom: 12.h),
          child: Row(children: [
            follower.profilePic != null
                ? ProfilePicContainer(image: NetworkImage(follower.profilePic!))
                : ProfilePicContainer(
                    image: const AssetImage('assets/images/profile.png')),
            SizedBox(width: 12.w),
            Center(
              child: Text16PtBlack(
                  text: '${follower.firstname} ${follower.lastname}'),
            )
          ])));
}
