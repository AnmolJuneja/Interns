import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/view_models/feed_and_catch_network_request/all_catchlog_request.dart';
import 'package:reelpro/views/catch_and_feed_screens/catch_details.dart';

import '../../models/user_catch_list_response.dart';

class UserCatchListUI extends StatefulWidget {
  final int useId;
  const UserCatchListUI({Key? key, required this.useId}) : super(key: key);

  @override
  State<UserCatchListUI> createState() => _UserCatchListUIState();
}

class _UserCatchListUIState extends State<UserCatchListUI> {
  final uu = Get.put(AddCatchlogApi());
  @override
  void initState() {
    uu.specificUserCatchFinal(0, 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF2F9FF),
        body: Obx(() => uu.isLoadingc.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Padding(
                padding: EdgeInsets.only(left: 36.w, right: 36.w, top: 20.h),
                child: uu.catchList.isNotEmpty
                    ? GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 16.h,
                            crossAxisSpacing: 16.w),
                        itemCount: uu.catchList.length,
                        itemBuilder: (context, index) {
                          return buildCatchList(uu.catchList[index]);
                        })
                    : Padding(
                        padding: EdgeInsets.only(top: 100.h, left: 130.w),
                        child: Text16PtBlack(text: 'No Catch Data')))));
  }
}

Widget buildCatchList(CatchData data) {
  return GestureDetector(
    onTap: () {
      Get.to(() => CatchDetailsUI(catchId: data.id!.toInt()));
    },
    child: Container(
      height: 170.h,
      width: 170.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(data.pic!))),
    ),
  );
}
