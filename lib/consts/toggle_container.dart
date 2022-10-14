import 'package:flutter/material.dart';
import 'package:reelpro/consts/text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToggleContainer extends StatefulWidget {
  Color color;
  bool isSelected;
  String text;
  ToggleContainer(
      {Key? key,
      required this.color,
      required this.isSelected,
      required this.text})
      : super(key: key);

  @override
  State<ToggleContainer> createState() => _ToggleContainerState();
}

class _ToggleContainerState extends State<ToggleContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: widget.color,
        padding: EdgeInsets.only(left: 36.w, top: 8.h, right: 36.w),
        height: 62.h,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text16PtBlack(text: widget.text),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h),
              child: Container(
                  height: 10.h,
                  width: 16.w,
                  child: widget.isSelected
                      ? const Icon(Icons.check, color: Color(0xff2B67A3))
                      : null),
            )
          ],
        ));
  }
}

class ToggleContainerBig extends StatefulWidget {
  Color color;
  bool isSelected;
  String text;
  String fishImage;
  ToggleContainerBig(
      {Key? key,
      required this.color,
      required this.isSelected,
      required this.fishImage,
      required this.text})
      : super(key: key);

  @override
  State<ToggleContainerBig> createState() => _ToggleContainerBigState();
}

class _ToggleContainerBigState extends State<ToggleContainerBig> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: widget.color,
        padding: EdgeInsets.only(left: 36.w, top: 8.h, right: 36.w),
        height: 76.h,
        width: double.infinity,
        child: Container(
          width: 355.w,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(widget.fishImage, height: 64.h, width: 64.w),
              SizedBox(width: 16.w),
              Text16PtBlack(text: widget.text),
              SizedBox(width: 194.w),
              Padding(
                padding: EdgeInsets.only(bottom: 20.h),
                child: Container(
                    height: 10.h,
                    width: 16.w,
                    child: widget.isSelected
                        ? const Icon(Icons.check, color: Color(0xff2B67A3))
                        : null),
              )
            ],
          ),
        ));
  }
}
