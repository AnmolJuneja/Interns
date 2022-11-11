import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/consts/text_fieldc.dart';
// import 'package:reelpro/views/list.dart';
import 'package:reelpro/views/bottom_navigation_screens/list_events.dart';
import 'package:reelpro/views/event_screens/upcoming_events.dart';

class EventListUI extends StatefulWidget {
  const EventListUI({Key? key}) : super(key: key);

  @override
  State<EventListUI> createState() => _EventListUIState();
}

class _EventListUIState extends State<EventListUI> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              // toolbarHeight: 80.h,
              backgroundColor: const Color(0xffF2F9FF),
              elevation: 0,
              leadingWidth: 140,
              leading: Padding(
                  padding: EdgeInsets.only(top: 28.h, left: 36.w),
                  child: Text30ptBlue(text: 'Events')),
            ),
            backgroundColor: const Color(0xffF2F9FF),
            body: Column(children: [
              Padding(
                  padding: EdgeInsets.only(left: 36.w, right: 32.w),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 24.h),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextFEventList(
                                  onSaved: (value) async {},
                                  onTap: () {},
                                  textEditingController: textEditingController,
                                  hintText: 'Search',
                                  textInputType: TextInputType.text,
                                  prefix: null,
                                  onchanged: (value) async {}),
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
                  child: SizedBox(
                      width: double.infinity,
                      height: 650.h,
                      child: TabBarView(children: [
                        const ListOfEvents(),
                        Center(
                          child: Text16PtBlack(text: 'No Current Events.'),
                        ),
                        const ListOfEvents2(),
                      ])))
            ])));
  }
}
