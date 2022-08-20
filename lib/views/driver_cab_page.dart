// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DriverCabPage extends StatefulWidget {
  const DriverCabPage({Key? key}) : super(key: key);

  @override
  State<DriverCabPage> createState() => _DriverCabPageState();
}

class _DriverCabPageState extends State<DriverCabPage> {
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
            child: Stack(children: [
      Positioned(
          bottom: 380.h,
          // ignore: sized_box_for_whitespace
          child: Container(
            height: 397.h,
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
          top: 397.h,
          child: Container(
            height: 415.h,
            width: 375.w,
            color: Colors.white,
          )),
      Positioned(
          top: 439.h,
          left: 36.w,
          child: Image(
              image: AssetImage('assets/images/driver_profile.png'),
              height: 60.h,
              width: 61.w)),
      Positioned(
          top: 443.h,
          left: 121.w,
          right: 108.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Mr. Joe',
                  style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff242424))),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Row(
                      children: List.generate(
                          4,
                          (index) => Icon(Icons.star,
                              color: Color(0xffFF9800), size: 13.sp))),
                  Icon(Icons.star, size: 13.sp, color: Color(0xff9F9F9F)),
                  SizedBox(width: 12.w),
                  Text(
                    '(26 ratings)',
                    style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff9F9F9F)),
                  )
                ],
              )
            ],
          )),
      Positioned(
          top: 505.h,
          left: 36.w,
          right: 36.w,
          child: Divider(
            color: const Color(0xff2424241F), thickness: 1,
          )),
      Positioned(
          top: 541.h,
          left: 36.w,
          right: 36.w,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Honda City',
                    style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff242424)),
                  ),
                  SizedBox(width: 135.w),
                  Text('First Available',
                      style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff9F9F9F)))
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.h, left: 77.w),
                child: Container(
                  padding: EdgeInsets.only(
                      top: 10.h, left: 95.w, right: 57.w, bottom: 10.h),
                  height: 52.h,
                  width: 226.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffEBEBEB)),
                  child: Text(
                    'T3479',
                    style: GoogleFonts.inter(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff242424)),
                  ),
                ),
              ),
            ],
          )),
      Positioned(
          top: 572.h,
          left: 36.w,
          right: 197.w,
          child:Image(image: AssetImage('assets/images/sedan@2x.png') , height: 80.h, width: 142.w,)),
          Positioned(
            top: 674.h,left: 36.w,right: 36.w,
            // ignore: use_full_hex_values_for_flutter_colors
            child: Divider(color: Color(0xff2424241F), thickness: 1)) , 
            Positioned(
              top: 703.h, left: 101.w,right: 233.w,
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Image(image: AssetImage('assets/images/cancel_ride.png') , height: 17.h, width: 17.w) , 
              SizedBox(height: 19.h) , 
              Text('Cancel' , style: GoogleFonts.inter(fontSize:12.sp , fontWeight: FontWeight.w500 , color: Color(0xff9F9F9F)),)
            ],)) , 
            Positioned(
              top: 703.h, left: 190.w, right: 90.w, 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                     Image(image: AssetImage('assets/images/call_driver.png') , height:17.h , width: 17.w ), 
                  SizedBox(height: 18.h) , 
                   Text('Call Driver' , style: GoogleFonts.inter(fontSize:12.sp , fontWeight: FontWeight.w500 , color: Color(0xff9F9F9F)),)
                ],)),
                Positioned(
                  top: 330.h,left: 136.w,right: 136.w,
                  child: Image(image:AssetImage('assets/images/Group 60.png') ,height: 51.h ,width: 103.w,)),
                  Positioned(
                    top: 265.h, left: 53.w,right: 276.w,
                    child: Image(image: AssetImage('assets/images/PngItem_4082636.png') , height: 61.h,width: 46.w,)) ,
                    Positioned(
                      top: 145.h,left: 77.w,right: 82.w,
                      child: Image(image: AssetImage('assets/images/Path 62.png'), height: 202.h,width: 218.w,)),
                      Positioned(
                        top: 270.h,left:205.w,right: 36.w,
                        child: Image(image: AssetImage('assets/images/map_car.png'), height: 68.h,width: 68.w,)),
                        Positioned(
                          top: 48.h,left: 36.w,right: 297.w,
                          child: Image(image: AssetImage('assets/images/humburger_icon.png') , height: 38.h,width: 42.w))
    ])));
  }
}
