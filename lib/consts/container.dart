import 'package:flutter/material.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomSheetContainer extends StatelessWidget {
  Text15PtGrey widgetText;
  BottomSheetContainer({Key? key, required this.widgetText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 17.h, left: 20.w),
        height: 52.h,
        width: 356.w,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  // ignore: use_full_hex_values_for_flutter_colors
                  color: Color.fromRGBO(113, 154, 195, 0.16),
                  blurRadius: 0,
                  offset: Offset(0, 4))
            ],
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
                width: 1, color: const Color.fromRGBO(113, 154, 195, 0.16)),
            color: Colors.white),
        child: widgetText);
  }
}

class BottomSheetContainerUpdate extends StatelessWidget {
  Text16PtBlack widgetText;
  BottomSheetContainerUpdate({Key? key, required this.widgetText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 17.h, left: 20.w),
        height: 52.h,
        width: 356.w,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  // ignore: use_full_hex_values_for_flutter_colors
                  color: Color.fromRGBO(113, 154, 195, 0.16),
                  blurRadius: 0,
                  offset: Offset(0, 4))
            ],
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
                width: 1, color: const Color.fromRGBO(113, 154, 195, 0.16)),
            color: Colors.white),
        child: widgetText);
  }
}

class Container100_88 extends StatelessWidget {
  String image;
  String text;
  Container100_88({Key? key, required this.image, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.h),
      height: 95.h,
      width: 110.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
              // ignore: use_full_hex_values_for_flutter_colors
              color: Color.fromRGBO(113, 154, 195, 0.16),
              blurRadius: 0,
              offset: Offset(0, 4))
        ],
      ),
      child: Center(
        child: Column(
          children: [
            Image(image: AssetImage(image), height: 44.h, width: 44.w),
            SizedBox(height: 8.h),
            Text16PtBlue(text: text)
          ],
        ),
      ),
    );
  }
}

class Container100_88w extends StatelessWidget {
  String image;
  String text;
  Container100_88w({Key? key, required this.image, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.h),
      height: 95.h,
      width: 120.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
              // ignore: use_full_hex_values_for_flutter_colors
              color: Color.fromRGBO(113, 154, 195, 0.16),
              blurRadius: 0,
              offset: Offset(0, 4))
        ],
      ),
      child: Center(
        child: Column(
          children: [
            Image(image: AssetImage(image), height: 44.h, width: 44.w),
            SizedBox(height: 8.h),
            Text16PtBlue(text: text)
          ],
        ),
      ),
    );
  }
}

class ProfilePicContainer extends StatelessWidget {
  ImageProvider<Object> image;
  ProfilePicContainer({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      width: 56.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: const Color(0xff909090)),
          image: DecorationImage(fit: BoxFit.cover, image: image)),
    );
  }
}

class ProfilePicContainerComment extends StatelessWidget {
  ImageProvider<Object> image;
  ProfilePicContainerComment({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: const Color(0xff909090)),
          image: DecorationImage(fit: BoxFit.cover, image: image)),
    );
  }
}

class LikeIcon extends StatelessWidget {
  Function()? onTap;
  Function()? onTap1;
  bool isliked;
  LikeIcon(
      {Key? key,
      required this.onTap,
      required this.onTap1,
      required this.isliked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 40.w,
      decoration: const BoxDecoration(
          // ignore: use_full_hex_values_for_flutter_colors
          shape: BoxShape.circle,
          color: Color.fromARGB(70, 196, 199, 185)),
      child: GestureDetector(
          onTap: onTap,
          child: isliked
              ? GestureDetector(
                  onTap: onTap1,
                  child: const Icon(Icons.favorite, color: Colors.blue))
              : const Icon(Icons.favorite_border, color: Colors.blue)),
    );
  }
}

class CommentIcon extends StatelessWidget {
  const CommentIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 40.w,
      decoration: const BoxDecoration(
          shape: BoxShape.circle, color: Color.fromARGB(70, 196, 199, 185)),
      child: const Center(child: Icon(Icons.comment_outlined)),
    );
  }
}

class ProfilePic extends StatelessWidget {
  ImageProvider<Object> image;
  ProfilePic({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 132.h,
        width: 132.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 3,
              color: Colors.white,
            ),
            image: DecorationImage(fit: BoxFit.cover, image: image)));
  }
}

class EventDetailsConst132 extends StatelessWidget {
  String text;

  String image;
  EventDetailsConst132({Key? key, required this.image, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Image.asset(
          image,
          height: 20.h,
        ),
        SizedBox(width: 10.w),
        Text16PtBlack(text: text)
      ]),
      const Icon(Icons.arrow_forward_ios, size: 15)
    ]);
  }
}

class SponserContainer extends StatelessWidget {
  const SponserContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 280.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Center(
            child: Padding(
                padding: EdgeInsets.only(top: 35.h),
                child: Column(children: [
                  Image.asset('assets/images/etl1gatt.png'),
                  SizedBox(height: 10.h),
                  Text16PtBlack(text: 'John Michael Baker'),
                  SizedBox(height: 5.h),
                  Text14PtGrey(text: 'Sponser'),
                  SizedBox(height: 20.h),
                  ButtonTrans(
                      onpressed: () {},
                      buttonText: 'Follow',
                      textColor: Colors.black,
                      width: 1,
                      widthColor: Colors.black,
                      color: Colors.white)
                ]))));
  }
}

class CircleContainerBlue extends StatelessWidget {
  String text;
  CircleContainerBlue({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      width: 44.w,
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Color(0xff2B67A3)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: const Color(0xffF2F9FF),
              fontSize: 18.sp,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
