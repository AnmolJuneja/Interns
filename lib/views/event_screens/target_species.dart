import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/text.dart';

class TargetSpeciesUI extends StatelessWidget {
  const TargetSpeciesUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F9FF),
      appBar: AppBar(
        toolbarHeight: 70.h,
        centerTitle: true,
        title: Padding(
            padding: EdgeInsets.only(top: 42.h),
            child: Text21PtBlack(text: 'Species')),
        elevation: 0,
        backgroundColor: const Color(0xffF2F9FF),
        leading: Padding(
            padding: EdgeInsets.only(top: 42.h, left: 36.w),
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios, color: Colors.black))),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 44.h, left: 36.w, right: 36.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Divider(thickness: 1),
          SizedBox(height: 15.h),
          Text16PtBlack(text: 'Snook - Common snook'),
          SizedBox(height: 15.h),
          const Divider(thickness: 1),
          SizedBox(height: 15.h),
          Text16PtBlack(text: 'Redfish - Red Drum(Redfish)'),
          SizedBox(height: 15.h),
          const Divider(thickness: 1),
          SizedBox(height: 15.h),
          Text16PtBlack(text: 'Tarpon - Tarpon'),
          SizedBox(height: 15.h),
          const Divider(thickness: 1),
          SizedBox(height: 15.h),
          Text16PtBlack(text: 'Redfish - Red Drum(Redfish)'),
          SizedBox(height: 15.h),
          const Divider(thickness: 1),
          SizedBox(height: 15.h),
          Text16PtBlack(text: 'Tarpon - Tarpon'),
          SizedBox(height: 15.h),
          const Divider(thickness: 1),
        ]),
      ),
    );
  }
}
