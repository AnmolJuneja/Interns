import 'package:flutter/material.dart';
import 'package:reelpro/consts/text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventDisclaimers extends StatelessWidget {
  const EventDisclaimers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F9FF),
      appBar: AppBar(
        backgroundColor: const Color(0xffF2F9FF),
        centerTitle: true,
        title: Text21PtBlack(text: 'Disclaimers'),
        elevation: 0,
        // toolbarHeight: 70.h,
        leading: Padding(
            padding: EdgeInsets.only(left: 36.w),
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios, color: Colors.black))),
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: 300.h),
          child: Center(
            child: Text21PtBlack(text: 'Event Disclaimers'),
          ),
        )
      ]),
    );
  }
}
