import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/message.dart';
import 'package:reelpro/consts/text.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            backgroundColor: const Color(0xffF2F9FF),
            body:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  padding: EdgeInsets.only(top: 64.h, left: 36.w),
                  child: Text30ptBlue(text: 'Messages')),
              SizedBox(height: 43.h),
              TabBar(
                  indicatorWeight: 2.0,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.tab,
                  automaticIndicatorColorAdjustment: true,
                  // automaticIndicatorColorAdjustment: false,
                  indicatorColor: const Color(0xff2B67A3),
                  labelColor: const Color(0xff2B67A3),
                  // ignore: use_full_hex_values_for_flutter_colors
                  unselectedLabelColor: const Color(0xff485058),
                  tabs: [
                    const Tab(text: 'Messages'),
                    Tab(
                      text: 'Alerts',
                      iconMargin: EdgeInsets.only(left: 50.w),
                    ),
                   const Tab(text: 'Announcements'),
                    const Tab(text: 'Notification')
                  ]),
              SizedBox(
                width: double.infinity,
                height: 650.h,
                child: TabBarView(
                    physics:const NeverScrollableScrollPhysics(),
                    children: [
                     const MessageConst(),
                      Center(
                          child: Text30ptBlue(
                        text: 'Alerts',
                      )),
                      Center(
                          child: Text30ptBlue(
                        text: 'Announcements',
                      )),
                      Center(
                          child: Text30ptBlue(
                        text: 'Notifications',
                      ))
                    ]),
              )
            ])));
  }
}
