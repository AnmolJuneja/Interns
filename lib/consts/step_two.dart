import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class StepTwo extends StatelessWidget {
  const StepTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 76.h),
        child: Container(
            height: 68.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              const  Icon(Icons.arrow_back_ios),
                Image(
                  image: const AssetImage('assets/images/Layer 2.png'),
                  height: 67.h,
                  width: 67.w,
                )
              ],
            )));
  }
}
