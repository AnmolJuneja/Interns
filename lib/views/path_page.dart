// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  final Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962), zoom: 14.4746);

  // ignore: unused_field
  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                bottom: 405.h,
                // ignore: sized_box_for_whitespace
                child: Container(
                  height: 385.h,
                  width: 375.w,
                  child: GoogleMap(
                    mapType: MapType.terrain,
                    initialCameraPosition: _kGooglePlex,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                  ),
                )),
            Positioned(
                top: 48.h,
                left: 94.w,
                right: 36.w,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.only(
                      top: 15.h, left: 50.w, bottom: 11.h, right: 6.w),
                  height: 48.h,
                  width: 245.w,
                  child: Text(
                    '37 Shirley Street, Ceda C...',
                    style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff242424)),
                  ),
                )),
            Positioned(
                top: 104.h,
                left: 94.w,
                right: 36.w,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.only(
                      top: 15.h, left: 50.w, bottom: 11.h, right: 6.w),
                  height: 48.h,
                  width: 245.w,
                  child: Text(
                    'Sixth Avenue, Campasie',
                    style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff242424)),
                  ),
                )),
            Positioned(
                top: 65.h,
                left: 106.w,
                right: 255.w,
                child: Container(
                    height: 70.h,
                    width: 14.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/bridge.png'))))),
            Positioned(
                top: 48.h,
                left: 36.w,
                right: 297.w,
                child: Container(
                  height: 38.h,
                  width: 42.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/humburger_icon.png'))),
                )),
            Positioned(
                top: 373.h,
                child: Container(
                  padding: EdgeInsets.only(top: 30.h, left: 36.w, right: 36.w),
                  height: 427.h,
                  width: 375.w,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('You will reach by ',
                              style: GoogleFonts.inter(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff9F9F9F))),
                          Text(
                            '12:44 PM',
                            style: GoogleFonts.inter(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffFF9800)),
                          )
                        ],
                      ),
                    ],
                  ),
                )),
            Positioned(
                top: 449.h,
                left: 36.w,
                right: 36.w,
                child: Container(
                  padding: EdgeInsets.only(top: 10.h, left: 83.w, right: 120.w),
                  height: 69.h,
                  width: 303.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF5F5F5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'First Available',
                        style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff242424)),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        '4 Seater',
                        style: GoogleFonts.inter(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff9F9F9F)),
                      ),
                    ],
                  ),
                )),
            Positioned(
                top: 526.h,
                left: 36.w,
                right: 36.w,
                child: Container(
                  padding: EdgeInsets.only(top: 10.h, left: 83.w, right: 120.w),
                  height: 69.h,
                  width: 303.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF5F5F5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sedan',
                        style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff242424)),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        '4 Seater',
                        style: GoogleFonts.inter(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff9F9F9F)),
                      ),
                    ],
                  ),
                )),
            Positioned(
                top: 473.h,
                left: 295.w,
                right: 42.w,
                child: Text(
                  "\$64",
                  style: GoogleFonts.inter(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFF9800)),
                )),
            Positioned(
                top: 550.h,
                left: 295.w,
                right: 45.w,
                child: Text(
                  "\$45",
                  style: GoogleFonts.inter(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFF9800)),
                )),
            Positioned(
                top: 476.h,
                left: 271.w,
                right: 92.w,
                child: Container(
                  height: 16.h,
                  width: 12.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/lock_icon.png'))),
                )),
            Positioned(
                top: 553.h,
                left: 271.w,
                right: 92.w,
                child: Container(
                  height: 16.h,
                  width: 12.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/lock_icon.png'))),
                )),
            Positioned(
                top: 458.h,
                left: 16.w,
                right: 264.w,
                child: Container(
                  height: 53.h,
                  width: 95.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/firsr_available.png'))),
                )),
            Positioned(
                top: 535.h,
                left: 16.w,
                right: 264.w,
                child: Container(
                  height: 53.h,
                  width: 95.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/sedan.png'))),
                )),
            Positioned(
                top: 228.h,
                left: 76.w,
                right: 56.w,
                child: Container(
                  height: 94.h,
                  width: 243.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Path 62.png'))),
                )),
            Positioned(
                top: 660.h,
                left: 251.w,
                right: 110.w,
                child: Container(
                  height: 13.h,
                  width: 14.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/schedule_icon.png'))),
                )),
            Positioned(
                top: 657.h,
                left: 275.w,
                right: 36.w,
                child: Text(
                  'Schedule',
                  style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff242424)),
                )),
            Positioned(
                top: 361.h,
                left: 291.w,
                right: 36.w,
                child: Image(
                    image: AssetImage('assets/images/pull_up_arrow.png'))),
            Positioned(
                top: 630.h,
                left: 36.w,
                right: 230.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment',
                      style: GoogleFonts.inter(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff9F9F9F)),
                    ),
                    SizedBox(height: 11.h),
                    Text(
                      'xxxx xxxx 4793',
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff242424)),
                    )
                  ],
                )),
            Positioned(
                top: 659.h,
                left: 155.w,
                right: 173.w,
                child: Text(
                  'Change',
                  style: GoogleFonts.inter(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFF9800)),
                )),
            Positioned(
              top: 708.h,
              left: 36.w,
              right: 36.w,
              child: Padding(
                padding: EdgeInsets.only(bottom: 56.h),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff242424)),
                    // ignore: sized_box_for_whitespace
                    onPressed: () {},
                    child: Container(
                      height: 48.h,
                      width: 465.w,
                      padding: EdgeInsets.only(
                          top: 10.5.h,
                          left: 110.w,
                          bottom: 10.5.h,
                          right: 80.w),
                      child: Text('Continue',
                          style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xffF5F5F5))),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
