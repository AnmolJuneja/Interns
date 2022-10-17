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
import 'package:reelpro/views/manage_team_screen.dart';
import 'package:reelpro/views/onboarding_screen.dart';
import 'package:reelpro/views/user_profile.dart';

class ProfileSettingsUI extends StatelessWidget {
  const ProfileSettingsUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final instance = Get.put(FishSpeciesListApi());
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
                    SaveNumber().saveNumber('');
                    SaveProfilePic().saveProfilePic('');
                    Dob().saveDob('');
                    SaveEmail().saveEmail('');
                    Get.to(() => const OnBoardingScreen());
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text16PtBlueMedium(text: 'Account'),
          SizedBox(height: 17.h),
          GestureDetector(
              onTap: () {},
              child: Settings(
                subTitle: 'No member',
                title: 'Manage Family',
                onTap: () {},
              )),
          Settings1(
            subTitle: '2 Teams',
            title: 'Manage Teams',
            onTap: () {
              Get.to(() => const MangeTeams());
            },
          ),
          SizedBox(height: 39.h),
          Text16PtBlueMedium(text: 'Preferences'),
          SizedBox(height: 10.h),
          Settings(
            title: 'Event Registeration',
            subTitle: 'Public',
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
                      Obx(() => GestureDetector(
                            onTap: () {
                              instance.color11.value =
                                  instance.selectedColor1.value;
                              instance.color12.value =
                                  instance.spareColor.value;
                              instance.isSelected11.value = true;
                              instance.isSelected12.value = false;
                            },
                            child: ToggleContainer(
                                color: instance.color11.value,
                                isSelected: instance.isSelected11.value,
                                text: 'Public'),
                          )),
                      Obx(() => GestureDetector(
                            onTap: () {
                              instance.color12.value =
                                  instance.selectedColor1.value;
                              instance.color11.value =
                                  instance.spareColor.value;
                              instance.isSelected12.value = true;
                              instance.isSelected11.value = false;
                            },
                            child: ToggleContainer(
                                color: instance.color12.value,
                                isSelected: instance.isSelected12.value,
                                text: 'Private'),
                          )),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 38.h, left: 36.w, right: 36.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Button56(
                                  onpressed: () {
                                    Navigator.pop(context);
                                    instance.color11.value =
                                        instance.spareColor.value;
                                    instance.color12.value =
                                        instance.spareColor.value;
                                    instance.isSelected11.value = false;
                                    instance.isSelected12.value = false;
                                  },
                                  buttonText: 'Cancel',
                                  textColor: const Color(0xff485058),
                                  width: 1,
                                  widthColor: const Color(0xff485058),
                                  color: const Color(0xffF2F9FF)),
                              Button56Blue(
                                  onpressed: () {
                                    Navigator.pop(context);
                                  },
                                  buttonText: 'Done',
                                  textColor: const Color(0xffF2F9FF),
                                  color: const Color(0xff2B67A3))
                            ]),
                      )
                    ]),
              ));
            },
          ),
          Settings1(
            title: 'Feed Post',
            subTitle: 'Public',
            onTap: () {},
          ),
          Settings1(
            title: 'Notifications',
            subTitle: 'All',
            onTap: () {},
          )
        ]),
      ),
    );
  }
}
