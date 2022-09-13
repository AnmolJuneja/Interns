import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LikeImage extends StatelessWidget {
  String image1;
   LikeImage({Key? key, required this.image1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 1),
          // borderRadius: BorderRadius.circular(45),
          image:  DecorationImage(image: AssetImage(image1))),
      height: 24.h,
      width: 24.w,
    );
  }
}
