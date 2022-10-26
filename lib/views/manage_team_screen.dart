import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/views/create_team.dart';
import 'package:reelpro/views/profile_settings.dart';

class MangeTeams extends StatelessWidget {
  const MangeTeams({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF2F9FF),
        elevation: 0,
        title: Padding(
            padding: EdgeInsets.only(top: 28.h),
            child: Text21PtBlack(text: 'Manage Teams')),
        centerTitle: true,
        toolbarHeight: 60.h,
        leading: Padding(
          padding: EdgeInsets.only(top: 28.h, left: 36.w),
          child: GestureDetector(
            onTap: () {
              Get.to(() =>  const ProfileSettingsUI());
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xffF2F9FF),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.only(top: 245.h, left: 145.w, right: 145.w),
              child: Image(
                image: const AssetImage('assets/images/Group 188.png'),
                height: 114.63.h,
                width: 137.61.w,
              )),
          // SizedBox(height: 28.37.h),
          Container(
            padding: EdgeInsets.only(top: 28.37.h, left: 86.w, right: 86.w),
            child: Column(
              children: [
                Text(
                  "You don't have teams",
                  style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff191A1C)),
                ),
                SizedBox(height: 16.h),
                Text(
                  'Create Team to start sharing your catches to your team',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff485058)),
                )
              ],
            ),
          ),
          SizedBox(height: 50.h),
          SizedBox(
            height: 56.h,
            width: 166.w,
            child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(primary: const Color(0xff2B67A3)),
                onPressed: () {
                  Get.to(const CreateTeamView());
                },
                child: Text(
                  'Create',
                  style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
