import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/text.dart';
import 'package:get/get.dart';
import 'package:reelpro/views/team_screens/view_team.dart';

class AboutGroupUI extends StatelessWidget {
  const AboutGroupUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F9FF),
      appBar: AppBar(
        // toolbarHeight: 70.h,
        elevation: 0,
        backgroundColor: const Color(0xffF2F9FF),
        title: Text21PtBlack(text: 'Group Info'),
        centerTitle: true,
        leading: Padding(
            padding: EdgeInsets.only(left: 36.w),
            child: GestureDetector(
                onTap: () {
                  Get.to(() => const ViewTeam());
                },
                child: const Icon(Icons.arrow_back_ios, color: Colors.black))),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30.h, left: 36.w, right: 36.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text14PtGrey(text: 'Group Description'),
          SizedBox(height: 10.h),
          Text14Pt58(
              text:
                  'The Wake Forest Parks, Recreation & Cultural Resources (PRCR) Department will host a Virtual Bass Fishing Tournament for ages 13 and older and a Virtual Youth Fishing Tournament for ages 12.'),
          SizedBox(height: 20.h),
          const Divider(thickness: 1),
          SizedBox(height: 20.h),
          Text14PtGrey(text: 'Group Owner'),
          SizedBox(height: 12.h),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Image.asset('assets/images/for designer.png',
                height: 64.h, width: 64.w),
            SizedBox(width: 12.w),
            Center(child: Text16PtBlack(text: 'Anthony Wilson')),
          ]),
          SizedBox(height: 20.h),
          const Divider(thickness: 1),
          SizedBox(height: 20.h),
          Text14PtGrey(text: 'Group Region'),
          SizedBox(height: 12.h),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              height: 64.h,
              width: 64.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff719AC3)),
              child: const Center(
                  child: Icon(Icons.location_on_outlined, color: Colors.white)),
            ),
            SizedBox(width: 12.w),
            Text16PtBlack(text: 'Perth Australia')
          ]),
          SizedBox(height: 20.h),
          const Divider(thickness: 1),
          SizedBox(height: 30.h),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Icon(Icons.people_outline),
              SizedBox(width: 8.w),
              Padding(
                  padding: EdgeInsets.only(top: 3.h),
                  child: Text16PtBlack(text: 'Members'))
            ]),
            const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            )
          ]),
          SizedBox(height: 25.h),
          const Divider(thickness: 1)
        ]),
      ),
    );
  }
}
