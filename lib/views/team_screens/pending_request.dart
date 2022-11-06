import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:reelpro/views/team_screens/view_team.dart';

class PendingRequestUI extends StatelessWidget {
  const PendingRequestUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // toolbarHeight: 70.h,
          title: Padding(
              padding: EdgeInsets.only(top: 42.h),
              child: Text21PtBlack(text: 'Pending Requests')),
          centerTitle: true,
          elevation: 0,
          backgroundColor: const Color(0xffF2F9FF),
          leading: Padding(
              padding: EdgeInsets.only(top: 42.h, left: 36.w),
              child: GestureDetector(
                  onTap: () {
                    Get.to(() => const ViewTeam());
                  },
                  child:
                      const Icon(Icons.arrow_back_ios, color: Colors.black)))),
      backgroundColor: const Color(0xffF2F9FF),
      body: Padding(
        padding: EdgeInsets.only(left: 36.w, right: 36.w, top: 44.h),
        child: Column(children: [
          Container(
            height: 700.h,
            child: ListView.builder(
                itemCount: 9,
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.only(bottom: 12.h),
                      height: 64.h,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset('assets/images/for designer.png'),
                                  SizedBox(width: 12.w),
                                  Center(
                                    child: Text16PtBlack(text: 'Beck William'),
                                  ),
                                ]),
                            Row(children: [
                              SvgPicture.asset('assets/images/Group 215.svg'),
                              SizedBox(width: 24.w),
                              SvgPicture.asset('assets/images/Group 216.svg')
                            ])
                          ]));
                }),
          ),
        ]),
      ),
    );
  }
}
