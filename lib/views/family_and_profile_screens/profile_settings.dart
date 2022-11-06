import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/settings.dart';
import 'package:reelpro/consts/text.dart';
import 'package:get/get.dart';
import 'package:reelpro/consts/toggle_container.dart';
import 'package:reelpro/controllers/feed_and_catch_controllers.dart';
import 'package:reelpro/controllers/registeration_controllers.dart';
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/view_models/team_and_profile_request/create_team.dart';
// import 'package:reelpro/view_models/feed_and_catch_network_request/fish_species_list.dart';
// import 'package:reelpro/view_models/register_user_request/registeration_step_two.dart';
// import 'package:reelpro/view_models/team_and_profile_request/team_list.dart';
import 'package:reelpro/views/family_and_profile_screens/family_members_list.dart';
import 'package:reelpro/views/family_and_profile_screens/manage_family.dart';
import 'package:reelpro/views/team_screens/manage_team_screen.dart';
import 'package:reelpro/views/registeration_screens/onboarding_screen.dart';
import 'package:reelpro/views/team_screens/team_list.dart';
import 'package:reelpro/views/family_and_profile_screens/user_profile.dart';

class ProfileSettingsUI extends StatefulWidget {
  const ProfileSettingsUI({Key? key}) : super(key: key);

  @override
  State<ProfileSettingsUI> createState() => _ProfileSettingsUIState();
}

class _ProfileSettingsUIState extends State<ProfileSettingsUI> {
  var teamCount = ''.obs;
  var valueOfList = 'Public'.obs;
  var value1 = 'Public'.obs;
  final teamApi = Get.put(CreateTeamApi());
  final instanceStepTwo = Get.put(RegistrationStepTwo2());
  @override
  void initState() {
    teamApi.getTeamFinal();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //  teamCount.value = teamApi.getTeam1.value.length.toString();
    return Scaffold(
        backgroundColor: const Color(0xffF2F9FF),
        appBar: AppBar(
          leading: Padding(
              padding: EdgeInsets.only(left: 36.w),
              child: GestureDetector(
                  onTap: () {
                    Get.to(const UserProfileUI());
                  },
                  child:
                      const Icon(Icons.arrow_back_ios, color: Colors.black))),
          title: Text21PtBlack(text: 'Settings'),
          centerTitle: true,
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 36.w),
                child: GestureDetector(
                  onTap: () async {
                    await SharedPreferences1().setToken('');
                    await SaveFirstName().saveFirstName('');
                    await SaveLastName().saveLastName('');
                    await Gender().saveGender('');
                    await SaveDescription().saveDescription('');
                    instanceStepTwo.description.value = '';
                    await SaveNumber().saveNumber('');
                    await SaveProfilePic().saveProfilePic('');
                    await Dob().saveDob('');
                    await SaveEmail().saveEmail('');
                    await Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OnBoardingScreen()));
                  },
                  child: const Icon(
                    Icons.logout,
                    color: Colors.red,
                  ),
                ))
          ],
          elevation: 0,
          backgroundColor: const Color(0xffF2F9FF),
        ),
        body: Padding(
            padding: EdgeInsets.only(left: 36.w, right: 36.w),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text16PtBlueMedium(text: 'Account'),
              SizedBox(height: 17.h),
              GestureDetector(
                  onTap: () {},
                  child: Settings(
                    subTitle: 'No member',
                    title: 'Manage Family',
                    onTap: () {
                      Get.to(() => const FamilyMembersListUI());
                    },
                  )),
              Obx(() => Settings1(
                    subTitle: "${teamApi.getTeam1.length}  Teams",
                    title: 'Manage Teams',
                    onTap: () {
                      // ignore: prefer_is_empty
                      if (teamApi.getTeam1.length != 0) {
                        Get.to(() => const TeamViewView());
                      } else {
                        Get.to(() => const MangeTeams());
                      }
                    },
                  )),
              SizedBox(height: 39.h),
              Text16PtBlueMedium(text: 'Preferences'),
              SizedBox(height: 10.h),
              Obx(() => Settings(
                  title: 'Event Registeration',
                  subTitle: valueOfList.value,
                  onTap: () {
                    Get.bottomSheet(Container(
                      decoration: const BoxDecoration(
                          color: Color(0xffF2F9FF),
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25),
                          )),
                      height: 367.h,
                      width: double.infinity,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 48.h, left: 36.w),
                              child: Text15PtBlue(
                                text: 'Event Registeration',
                              ),
                            ),
                            SizedBox(height: 25.h),
                            ListView(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              children: registerationType
                                  .map((e) => GestureDetector(
                                        onTap: () {
                                          valueOfList.value = e;
                                        },
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                              top: 20.h,
                                            ),
                                            child: Obx(() => ToggleContainer(
                                                color: valueOfList.value == e
                                                    ? AddFeedApi1()
                                                        .selectedItemcolor
                                                        .value
                                                    : AddFeedApi1()
                                                        .transparentColor
                                                        .value,
                                                isSelected:
                                                    valueOfList.value == e
                                                        ? true
                                                        : false,
                                                text: e))),
                                      ))
                                  .toList(),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 38.h, left: 36.w, right: 36.w),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Button56(
                                        onpressed: () {
                                          Navigator.pop(context);
                                        },
                                        buttonText: 'Cancel',
                                        textColor: const Color(0xff485058),
                                        width: 1,
                                        widthColor: const Color(0xff485058),
                                        color: AddFeedApi1()
                                            .transparentColor
                                            .value),
                                    Button56Blue(
                                        onpressed: () {
                                          Navigator.pop(context);
                                        },
                                        buttonText: 'Done',
                                        textColor: const Color(0xffF2F9FF),
                                        color: const Color(0xff2B67A3))
                                  ]),
                            ),
                          ]),
                    ));
                  })),
              Obx(
                () => Settings1(
                    title: 'Feed Post',
                    subTitle: value1.value,
                    onTap: () {
                      Get.bottomSheet(Container(
                        padding: EdgeInsets.only(top: 48.h),
                        height: 428.h,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(25)),
                            color: Color(0xffF2F9FF)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 36.w),
                                  child: Text15PtBlue(text: 'Post Visibility')),
                              SizedBox(height: 10.h),
                              ListView(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                children: postVisibility
                                    .map((e) => GestureDetector(
                                          onTap: () {
                                            value1.value = e;
                                          },
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                top: 20.h,
                                              ),
                                              child: Obx(() => ToggleContainer(
                                                  color: value1.value == e
                                                      ? AddFeedApi1()
                                                          .selectedItemcolor1
                                                          .value
                                                      : AddFeedApi1()
                                                          .transparentColor1
                                                          .value,
                                                  isSelected: value1.value == e
                                                      ? true
                                                      : false,
                                                  text: e))),
                                        ))
                                    .toList(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 15.h, left: 36.w, right: 36.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Button56(
                                        onpressed: () {
                                          Navigator.pop(context);
                                        },
                                        buttonText: 'Cancel',
                                        textColor: Colors.black,
                                        width: 1,
                                        widthColor: Colors.black,
                                        color: const Color(0xffF2F9FF)),
                                    Button56Blue(
                                        onpressed: () {
                                          Navigator.pop(context);
                                        },
                                        buttonText: 'Done',
                                        textColor: const Color(0xffF2F9FF),
                                        color: const Color(0xff2B67A3))
                                  ],
                                ),
                              )
                            ]),
                      ));
                    }),
              ),
              Settings1(title: 'Notifications', subTitle: 'All', onTap: () {})
            ])));
  }

  final List<String> registerationType = ['Public', 'Private'];
  final List<String> postVisibility = ['Public', 'Followers', 'Private'];
}
