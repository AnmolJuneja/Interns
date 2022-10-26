import 'package:flutter/material.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reelpro/views/profile_settings.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ManageFamilyUI extends StatelessWidget {
  const ManageFamilyUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F9FF),
      appBar: AppBar(
        backgroundColor: const Color(0xffF2F9FF),
        elevation: 0,
        title: Padding(
            padding: EdgeInsets.only(top: 28.h),
            child: Text21PtBlack(text: 'Manage Family')),
        centerTitle: true,
        toolbarHeight: 60.h,
        leading: Padding(
          padding: EdgeInsets.only(top: 28.h, left: 36.w),
          child: GestureDetector(
            onTap: () {
              Get.to(() => const ProfileSettingsUI());
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: 149.h, left: 80.w, right: 80.w),
          child: Center(
              child: Column(
            children: [
              SvgPicture.asset('assets/images/nomembers.svg'),
              SizedBox(height: 28.h),
              Text21PtBlack(text: 'No members to show'),
              SizedBox(height: 16.h),
              Text(
                'Add your family members and start building a community',
                style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff485058)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50.h),
              Button56Blue(
                  onpressed: () {},
                  buttonText: 'Add',
                  textColor: const Color(0xffF2F9FF),
                  color: const Color(0xff2B67A3))
            ],
          )),
        ),
      ]),
    );
  }
}
