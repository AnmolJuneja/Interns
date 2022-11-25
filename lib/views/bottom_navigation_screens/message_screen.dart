import 'dart:io';

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
            appBar: AppBar(
              backgroundColor: const Color(0xffF2F9FF),
              elevation: 0,
              actions: [
                Padding(
                    padding: EdgeInsets.only(right: 255.w, top: 14.h),
                    child: Text30ptBlue(text: 'Messages'))
              ],
            ),
            backgroundColor: const Color(0xffF2F9FF),
            body: Stack(children: [
              Positioned(
                  top: Platform.isIOS ? 69.h : 78.5.h,
                  child: Container(
                    height: 2.h,
                    width: 450.w,
                    color: Colors.grey,
                  )),
              SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 23.h),
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
                              text: 'Notifications',
                              iconMargin: EdgeInsets.only(left: 50.w),
                            ),
                            const Tab(text: 'Announcements'),
                            const Tab(text: 'Alerts')
                          ]),
                      SizedBox(
                        width: double.infinity,
                        height: 650.h,
                        child: TabBarView(
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              const MessageConst(),
                              Center(
                                  child: Text30ptBlue(
                                text: 'Notifications',
                              )),
                              Center(
                                  child: Text30ptBlue(
                                text: 'Announcements',
                              )),
                              Center(
                                  child: Text30ptBlue(
                                text: 'Alerts',
                              ))
                            ]),
                      )
                    ]),
              )
            ])));
  }
}
