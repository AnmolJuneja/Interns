import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/settings.dart';
import 'package:reelpro/consts/text.dart';
import 'package:get/get.dart';
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/views/manage_team_screen.dart';
import 'package:reelpro/views/onboarding_screen.dart';
import 'package:reelpro/views/user_profile.dart';

class ProfileSettingsUI extends StatelessWidget {
  const ProfileSettingsUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
