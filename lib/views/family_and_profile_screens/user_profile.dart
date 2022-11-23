import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/text.dart';
import 'package:get/get.dart';
import 'package:reelpro/controllers/registeration_controllers.dart';
import 'package:reelpro/models/my_feed_list.dart';
import 'package:reelpro/view_models/feed_and_catch_network_request/all_feed_request.dart';
import 'package:reelpro/view_models/team_and_profile_request/other_user_profile.dart';
import 'package:reelpro/views/bottom_navigation_screens/bottom_navigation.dart';
import 'package:reelpro/views/family_and_profile_screens/edit_profile.dart';
import 'package:reelpro/views/catch_and_feed_screens/feed_details.dart';
import 'package:reelpro/views/family_and_profile_screens/followers_following.dart';
import 'package:reelpro/views/family_and_profile_screens/profile_settings.dart';
import '../catch_and_feed_screens/user_catch_list.dart';

class UserProfileUI extends StatefulWidget {
  const UserProfileUI({Key? key}) : super(key: key);

  @override
  State<UserProfileUI> createState() => _UserProfileUIState();
}

class _UserProfileUIState extends State<UserProfileUI> {
  @override
  void initState() {
    super.initState();
    ff.myProfileFinal();
  }

  final instance = Get.put(RegistrationStepTwo2());
  final ff = Get.put(OtherUserProfileApi());
  final userProfileList = Get.put(AddFeedApi());
  final myfeed = Get.put(AddFeedApi());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: Padding(
                  padding: EdgeInsets.only(left: 36.w),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    BottomNavigation(currentIndex: 2)),
                            (route) => false);
                      },
                      child: const Icon(Icons.arrow_back_ios,
                          color: Colors.black))),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 36.w),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => const ProfileSettingsUI());
                    },
                    child: const Icon(Icons.settings_outlined,
                        color: Colors.black),
                  ),
                )
              ],
            ),
            body: Obx(() => ff.isLoading.value
                ? const Center(child: CircularProgressIndicator())
                : SingleChildScrollView(
                    child: Column(children: [
                      Padding(
                        padding:
                            EdgeInsets.only(top: 17.h, left: 36.w, right: 36.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(children: [
                              Obx(() => Container(
                                  height: 138.h,
                                  width: 132.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 3, color: Colors.white),
                                      image: instance.profilePic1.value == ''
                                          ? const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  'assets/images/profile.png'))
                                          : DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(instance
                                                  .profilePic1.value))))),
                              SizedBox(width: 16.w),
                              Padding(
                                padding: EdgeInsets.only(top: 5.h),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Obx(
                                        () => Row(
                                          children: [
                                            Text21PtBlack(
                                                text:
                                                    instance.firstName1.value),
                                            SizedBox(width: 5.w),
                                            Text21PtBlack(
                                                text: instance.lastName1.value),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 5.h),
                                      Text14ptOpacity50(
                                          text: 'Member Since Mar 2017'),
                                      SizedBox(height: 22.h),
                                      GestureDetector(
                                        onTap: () {
                                          Get.to(() => EditProfile1(
                                                desc: ff.viewProfile!.data!
                                                        .description ??
                                                    'Add Description',
                                              ));
                                        },
                                        child: Container(
                                          padding: EdgeInsets.only(left: 60.w),
                                          height: 36.h,
                                          width: 208.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.white,
                                              border: Border.all(
                                                  width: 1,
                                                  color:
                                                      const Color(0xff485058))),
                                          child: Center(
                                            child: Row(children: [
                                              const Icon(
                                                Icons.edit_outlined,
                                                size: 14,
                                              ),
                                              SizedBox(width: 5.w),
                                              Text14ptDesc(text: 'Edit_Profile')
                                            ]),
                                          ),
                                        ),
                                      )
                                    ]),
                              ),
                            ]),
                            Padding(
                              padding: EdgeInsets.only(top: 20.h, left: 5.w),
                              child: Text14ptDesc(
                                  text: ff.viewProfile!.data!.description ??
                                      'Add Description'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 37.w, right: 37.w, top: 22.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text20PtBold(text: ' 0'),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Text20PtBold(
                                          text:
                                              '${ff.viewProfile!.data!.followers}'),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Get.to(() => const FollowingUI());
                                      },
                                      child: Text20PtBold(
                                          text:
                                              '${ff.viewProfile!.data!.following}'),
                                    )
                                  ]),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 6.h, left: 15.w, right: 15.w),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text14ptOpacity50(text: ' Rewards'),
                                    Text14ptOpacity50(text: 'Followers'),
                                    Text14ptOpacity50(text: 'Following')
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30.h),
                      Container(
                        height: 1150.h,
                        padding: EdgeInsets.only(top: 15.h),
                        width: double.infinity,
                        color: const Color(0xffF2F9FF),
                        child: Column(children: [
                          const TabBar(
                            indicatorWeight: 2.0,
                            isScrollable: true,
                            indicatorSize: TabBarIndicatorSize.tab,
                            automaticIndicatorColorAdjustment: true,
                            // automaticIndicatorColorAdjustment: false,
                            indicatorColor: Color(0xff2B67A3),
                            labelColor: Color(0xff2B67A3),
                            // ignore: use_full_hex_values_for_flutter_colors
                            unselectedLabelColor:
                                Color.fromARGB(255, 59, 63, 68),
                            tabs: [
                              Tab(text: 'My Feeds'),
                              Tab(text: 'Catchlog'),
                              Tab(text: 'Event History'),
                              Tab(text: 'Clubs & Associates'),
                              Tab(text: 'Equipments')
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                                physics: const AlwaysScrollableScrollPhysics(),
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(
                                          top: 20.h, left: 36.w, right: 36.w),
                                      child: FutureBuilder(
                                          future: myfeed.getMyFeedListFinal(),
                                          builder: (context, snapshot) {
                                            if (snapshot.hasData) {
                                              return myfeed.myFeedList!.data!
                                                      .data!.isNotEmpty
                                                  ? GridView.builder(
                                                      shrinkWrap: true,
                                                      physics:
                                                          const NeverScrollableScrollPhysics(),
                                                      itemCount: myfeed
                                                          .myFeedList!
                                                          .data!
                                                          .data!
                                                          .length,
                                                      gridDelegate:
                                                          SliverGridDelegateWithFixedCrossAxisCount(
                                                              mainAxisSpacing:
                                                                  16.h,
                                                              crossAxisSpacing:
                                                                  16.w,
                                                              crossAxisCount:
                                                                  2),
                                                      itemBuilder:
                                                          (context, index) {
                                                        return buildImage(myfeed
                                                            .myFeedList!
                                                            .data!
                                                            .data![index]);
                                                      })
                                                  : Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 100.h,
                                                          left: 130.w),
                                                      child: Text16PtBlack(
                                                          text:
                                                              'No Feed Data'));
                                            } else {
                                              return const Center(
                                                  child:
                                                      CircularProgressIndicator());
                                            }
                                          })),
                                  const UserCatchListUI(useId: 0),
                                  const Center(child: Text('No Data')),
                                  const Center(child: Text('No Data')),
                                  const Center(child: Text('No Data'))
                                ]),
                          ),
                        ]),
                      )
                    ]),
                  ))));
  }
}

Widget buildImage(MyFeed userList) {
  return GestureDetector(
    onTap: () {
      Get.to(() => FeedDetailsUI(feedId: userList.id!.toInt()));
    },
    child: Container(
      height: 170.h,
      width: 170.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(userList.getFeedImages![0].pic!))),
    ),
  );
}
