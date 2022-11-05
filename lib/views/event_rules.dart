import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/text.dart';

class EventRulesUI extends StatelessWidget {
  const EventRulesUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F9FF),
      appBar: AppBar(
        backgroundColor: const Color(0xffF2F9FF),
        centerTitle: true,
        title: Padding(
            padding: EdgeInsets.only(top: 42.h),
            child: Text21PtBlack(text: 'Rules')),
        elevation: 0,
        toolbarHeight: 70.h,
        leading: Padding(
            padding: EdgeInsets.only(top: 42.h, left: 36.w),
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios, color: Colors.black))),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 43.h, left: 36.w, right: 36.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text16PtBlack(text: 'Fishing Tournament Rules - 2022'),
          SizedBox(height: 10.h),
          const Text(
              'The BronzeBack Classic is about getting people-powered water crafts out in the name of fun and competition! Our goal as host is to work hard to ensure a fair and balanced playing field. With that being said, if any of the rules need altering to ensure the safety of all participates we reserve the right to alter them at any time, without formal notice. To stay up to date with rules, prizes and general information please reference CWOutfitting.com and our Facebook page.'),
          SizedBox(height: 31.h),
          Text16PtBlack(text: 'WHO CAN ENTER:'),
          SizedBox(height: 10.h),
          const Text(
              'Anyone with or without (we rent them) a canoe, kayak or SUP board and wants to experience some awesome fishing, scenery, and camaraderie. This excludes any use of a trolling motor and any other mechanical motor.'),
          SizedBox(height: 31.h),
          Text16PtBlack(text: 'REGISTERATION AND FEES:'),
          SizedBox(height: 10.h),
          const Text(
              'We wanted to provide a low cost tournament with extra special service, food, prizes, and fishing action. Price includes entry fee, shuttling of people and equipment, staff to assist with getting on and off the river, participation gift, cash prizes and merchandise prizes for at least 4-6 places, door prizes, awards ceremony with a great meal, and equipment rentals available if you pay the extra amount. Our goal is for all participants to take home prizes.'),
          SizedBox(height: 14.h),
          const Text(
              'See tournament web page for costs including early bird registration cost and deadline.'),
          SizedBox(height: 14.h),
          const Text(
              'Angler without canoe or kayak rentals available at discounted price. See tournament web page.'),
          SizedBox(height: 14.h),
          const Text('1. We have various types of fishing kayaks and canoes.'),
          const Text('2. Special requests can be accommodated based on')
        ]),
      ),
    );
  }
}
