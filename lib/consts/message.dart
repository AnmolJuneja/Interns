import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:reelpro/consts/text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MessageConst extends StatelessWidget {
  const MessageConst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: ((context) {}),
              backgroundColor: const Color(0xffF2F9FF),
              icon: Icons.favorite_border,
              foregroundColor: const Color(0xff2B67A3),
            ),
            SlidableAction(
              onPressed: ((context) {}),
              backgroundColor: const Color(0xffF2F9FF),
              icon: Icons.reply,
              foregroundColor: const Color(0xff2B67A3),
            ),
            SlidableAction(
              onPressed: ((context) {}),
              backgroundColor: const Color(0xffF2F9FF),
              icon: Icons.delete_outline_outlined,
              foregroundColor: Colors.red,
            )
          ],
        ),
        child: Container(
            padding: EdgeInsets.only(top: 35.h, left: 36.w, right: 36.w),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text16PtBlue(
                  text: '5th Annual Texas Fly Fishing and Brew Festi...'),
              SizedBox(height: 8.h),
              Text14ptDesc(
                text:
                    "This year's Texas Fly Fishing and Brew Festival is held inside the spacious Mesquite Convention Center loc...",
              ),
              SizedBox(height: 15.h),
              const Divider(
                thickness: 1,
              )
            ])),
      ),
      Slidable(
          endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                onPressed: ((context) {}),
                backgroundColor: const Color(0xffF2F9FF),
                icon: Icons.favorite_border,
                foregroundColor: const Color(0xff2B67A3),
              ),
              SlidableAction(
                onPressed: ((context) {}),
                backgroundColor: const Color(0xffF2F9FF),
                icon: Icons.reply,
                foregroundColor: const Color(0xff2B67A3),
              ),
              SlidableAction(
                onPressed: ((context) {}),
                backgroundColor: const Color(0xffF2F9FF),
                icon: Icons.delete_outline_outlined,
                foregroundColor: Colors.red,
              )
            ],
          ),
          child: Container(
              padding: EdgeInsets.only(top: 10.h, left: 36.w, right: 36.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text16PtBlue(text: 'Dallas Safari Club 2022'),
                    SizedBox(height: 8.h),
                    Text14ptDesc(
                      text:
                          "DSC is a mission-focused conservation organization, funded by hunters from around the world.",
                    ),
                    SizedBox(height: 15.h),
                    const Divider(
                      thickness: 1,
                    )
                  ]))),
      Slidable(
          endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                onPressed: ((context) {}),
                backgroundColor: const Color(0xffF2F9FF),
                icon: Icons.favorite_border,
                foregroundColor: const Color(0xff2B67A3),
              ),
              SlidableAction(
                onPressed: ((context) {}),
                backgroundColor: const Color(0xffF2F9FF),
                icon: Icons.reply,
                foregroundColor: const Color(0xff2B67A3),
              ),
              SlidableAction(
                onPressed: ((context) {}),
                backgroundColor: const Color(0xffF2F9FF),
                icon: Icons.delete_outline_outlined,
                foregroundColor: Colors.red,
              )
            ],
          ),
          child: Container(
              padding: EdgeInsets.only(top: 10.h, left: 36.w, right: 36.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text16PtBlue(text: 'Dallas Safari Club 2022'),
                    SizedBox(height: 8.h),
                    Text14ptDesc(
                      text:
                          "DSC is a mission-focused conservation organization, funded by hunters from around the world.",
                    ),
                    SizedBox(height: 15.h),
                    const Divider(
                      thickness: 1,
                    )
                  ]))),
      Slidable(
          endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                onPressed: ((context) {}),
                backgroundColor: const Color(0xffF2F9FF),
                icon: Icons.favorite_border,
                foregroundColor: const Color(0xff2B67A3),
              ),
              Divider(),
              SlidableAction(
                onPressed: ((context) {}),
                backgroundColor: const Color(0xffF2F9FF),
                icon: Icons.reply,
                foregroundColor: const Color(0xff2B67A3),
              ),
              SlidableAction(
                onPressed: ((context) {}),
                backgroundColor: const Color(0xffF2F9FF),
                icon: Icons.delete_outline_outlined,
                foregroundColor: Colors.red,
              )
            ],
          ),
          child: Container(
              padding: EdgeInsets.only(top: 10.h, left: 36.w, right: 36.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text16PtBlue(text: 'Planning & Zoning Commision Meeting'),
                    SizedBox(height: 8.h),
                    Text14ptDesc(
                      text:
                          "This year's Texas Fly Fishing & Brew Festival is held inside the spacious.",
                    ),
                    SizedBox(height: 15.h),
                    const Divider(
                      thickness: 1,
                    )
                  ])))
    ]);
  }
}
