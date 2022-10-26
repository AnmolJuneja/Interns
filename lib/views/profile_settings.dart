import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/settings.dart';
import 'package:reelpro/consts/text.dart';
import 'package:get/get.dart';
import 'package:reelpro/consts/toggle_container.dart';
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/view_models/fish_species_list.dart';
import 'package:reelpro/view_models/registeration_step_two.dart';
import 'package:reelpro/view_models/team_list.dart';
import 'package:reelpro/views/manage_family.dart';
import 'package:reelpro/views/manage_team_screen.dart';
import 'package:reelpro/views/onboarding_screen.dart';
import 'package:reelpro/views/team_list.dart';
import 'package:reelpro/views/user_profile.dart';

class ProfileSettingsUI extends StatefulWidget {
  const ProfileSettingsUI({Key? key}) : super(key: key);

  @override
  State<ProfileSettingsUI> createState() => _ProfileSettingsUIState();
}

class _ProfileSettingsUIState extends State<ProfileSettingsUI> {
  var teamCount = ''.obs;
  var valueOfList = 'Public'.obs;
  final instance = Get.put(FishSpeciesListApi());
  final teamApi = Get.put(TeamViewApi());
  final instanceStepTwo = Get.put(RegistrationStepTwo2());
  @override
  void initState() {
    teamApi.getTeam12();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //  teamCount.value = teamApi.getTeam1.value.length.toString();
    return Scaffold(
        backgroundColor: const Color(0xffF2F9FF),
        appBar: AppBar(
            leading: Padding(
                padding: EdgeInsets.only(top: 28.h, left: 36.w),
                child: GestureDetector(
                    onTap: () {
                      Get.to(const UserProfileUI());
                    },
                    child:
                        const Icon(Icons.arrow_back_ios, color: Colors.black))),
            title: Padding(
                padding: EdgeInsets.only(top: 28.h),
                child: Text21PtBlack(text: 'Settings')),
            centerTitle: true,
            actions: [
              Padding(
                  padding: EdgeInsets.only(top: 28.h, right: 36.w),
                  child: GestureDetector(
                    onTap: () {
                      SharedPreferences1().setToken('');
                      SaveFirstName().saveFirstName('');
                      SaveLastName().saveLastName('');
                      Gender().saveGender('');
                      SaveDescription().saveDescription('');
                      instanceStepTwo.description.value = '';
                      SaveNumber().saveNumber('');
                      SaveProfilePic().saveProfilePic('');
                      Dob().saveDob('');
                      SaveEmail().saveEmail('');
                      Navigator.pushReplacement(
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
            toolbarHeight: 60.h),
        body: Padding(
            padding: EdgeInsets.only(top: 39.h, left: 36.w, right: 36.w),
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
                      Get.to(() => const ManageFamilyUI());
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
                                                    ? instance
                                                        .selectedItemcolor.value
                                                    : instance
                                                        .transparentColor.value,
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
                                        color: instance.transparentColor.value),
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
              Settings1(title: 'Feed Post', subTitle: 'Public', onTap: () {}),
              Settings1(title: 'Notifications', subTitle: 'All', onTap: () {})
            ])));
  }

  final List<String> registerationType = ['Public', 'Private'];
}
