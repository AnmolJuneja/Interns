import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/consts/text_field.dart';
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/views/list_events.dart';
import 'package:reelpro/views/onboarding_screen.dart';

class EventListUI extends StatelessWidget {
  const EventListUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: const Color(0xffF2F9FF),
            body: Column(children: [
              Padding(
                  padding: EdgeInsets.only(top: 64.h, left: 36.w, right: 32.w),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text30ptBlue(text: 'Events'),
                        SizedBox(height: 24.h),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextFEventList(
                                  textEditingController: textEditingController,
                                  hintText: 'Search',
                                  textInputType: TextInputType.text,
                                  prefix: null,
                                  onchanged: (value) {}),
                              Image.asset('assets/images/Group 209.png'),
                            ]),
                        SizedBox(height: 25.h),
                      ])),
              const TabBar(
                indicatorWeight: 2.0,
                isScrollable: false,
                indicatorSize: TabBarIndicatorSize.tab,
                automaticIndicatorColorAdjustment: true,
                // automaticIndicatorColorAdjustment: false,
                indicatorColor: Color(0xff2B67A3),
                labelColor: Color(0xff2B67A3),
                // ignore: use_full_hex_values_for_flutter_colors
                unselectedLabelColor: Color.fromARGB(255, 59, 63, 68),
                tabs: [
                  Tab(text: 'Previous'),
                  Tab(text: 'Current'),
                  Tab(text: 'Upcoming')
                ],
              ),
              Flexible(
                  child: Container(
                      width: double.infinity,
                      height: 650.h,
                      child: TabBarView(children: [
                        ListOfEvents(),
                        Center(child: Text30ptBlue(text: 'Current Events')),
                        Center(
                          child: Text30ptBlue(text: 'Upcoming Events'),
                        )
                      ])))
            ])));
  }
}
