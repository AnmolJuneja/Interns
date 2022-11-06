import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/consts/text_field.dart';
import 'package:reelpro/consts/text_fieldc.dart';
import 'package:get/get.dart';
import 'package:reelpro/views/team_screens/team_list.dart';
import 'package:reelpro/views/team_screens/view_team.dart';

class ReportGroupUI extends StatefulWidget {
  const ReportGroupUI({Key? key}) : super(key: key);

  @override
  State<ReportGroupUI> createState() => _ReportGroupUIState();
}

class _ReportGroupUIState extends State<ReportGroupUI> {
  TextEditingController reasonController = TextEditingController();
  TextEditingController detailsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 70.h,
        elevation: 0,
        backgroundColor: const Color(0xffF2F9FF),
        title: Padding(
            padding: EdgeInsets.only(top: 42.h),
            child: Text21PtBlack(text: 'Report Group')),
        centerTitle: true,
        leading: Padding(
            padding: EdgeInsets.only(top: 42.h, left: 36.w),
            child: GestureDetector(
                onTap: () {
                  Get.to(() => const ViewTeam());
                },
                child: Icon(Icons.arrow_back_ios, color: Colors.black))),
      ),
      backgroundColor: const Color(0xffF2F9FF),
      body: Padding(
        padding: EdgeInsets.only(left: 36.w, right: 36.w, top: 43.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text14PtBlue(text: 'Reason'),
          SizedBox(height: 9.h),
          TextF(
              readOnly: false,
              textEditingController: reasonController,
              hintText: 'Select',
              textInputType: TextInputType.text,
              prefix: null,
              onchanged: (value) {}),
          SizedBox(height: 24.h),
          Text14PtBlue(text: 'Details'),
          SizedBox(height: 9.h),
          BigTextFieldDetails(
              textEditingController: detailsController,
              hintText: 'Tell us more',
              textInputType: TextInputType.text,
              onchanged: (value) {}),
          SizedBox(height: 413.h),
          MyButton(onpressed: () {}, buttonText: 'Submit')
        ]),
      ),
    );
  }
}
