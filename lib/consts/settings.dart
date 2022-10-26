
import 'package:flutter/material.dart';
import 'package:reelpro/consts/text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Settings extends StatelessWidget {
  String title;
  String subTitle;
  void Function()? onTap;
  Settings({Key? key, required this.title, required this.subTitle, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          const Divider(
            thickness: 1,
          ),
          SizedBox(height: 8.h),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text16PtBlack58(text: title),
              SizedBox(height: 8.h),
              Text14Pt58(text: subTitle)
            ]),
            const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            )
          ]),
          SizedBox(height: 10.h),
          const Divider(thickness: 1)
        ],
      ),
    );
  }
}

class Settings1 extends StatelessWidget {
  String title;
  String subTitle;
  void Function()? onTap;
  Settings1({Key? key, required this.title, required this.subTitle, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(height: 8.h),
           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text16PtBlack58(text: title),
                SizedBox(height: 8.h),
                Text14Pt58(text: subTitle)
              ]),
              const Icon(
                Icons.arrow_forward_ios,
                size: 15,
              )
            ]),
          SizedBox(height: 10.h),
          const Divider(thickness: 1)
        ],
      ),
    );
  }
}
