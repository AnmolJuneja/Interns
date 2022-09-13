import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // ignore: prefer_const_literals_to_create_immutables
      body: Stack(children: [
         Positioned(
          bottom: 389.h,
          child:const Image(image: AssetImage('assets/images/Rectangle 5.png'))),
        Positioned(
          bottom: 371.36.h, left: 118.w,right: 118.w,
          child:const Image(image: AssetImage('assets/images/Group 18.png'))),
          Positioned(
           left: 118.w, right: 118.w, bottom: 333.5.h,
            child:const Image(image: AssetImage('assets/images/ReelPro.png'))),
            Positioned(
              top: 736.h,
              child:const Image(image: AssetImage('assets/images/bottom-wave.png')))
      ],),
    );
  }
}
