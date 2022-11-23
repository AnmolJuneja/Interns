import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/text.dart';
import 'package:get/get.dart';
import 'package:reelpro/views/team_screens/view_team.dart';

class InviteMembersUI extends StatelessWidget {
  const InviteMembersUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text21PtBlack(text: 'Invite'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: const Color(0xffF2F9FF),
          leading: Padding(
              padding: EdgeInsets.only(left: 36.w),
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
          SizedBox(
            height: 700.h,
            child: ListView.builder(
                itemCount: 6,
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
                            Container(
                              height: 38.h,
                              width: 84.w,
                              decoration: BoxDecoration(
                                  color: const Color(0xffF2F9FF),
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      width: 1.5,
                                      color: const Color(0xff2B67A3))),
                              child:
                                  Center(child: Text16PtBlue(text: 'Invite')),
                            )
                          ]));
                }),
          ),
        ]),
      ),
    );
  }
}
