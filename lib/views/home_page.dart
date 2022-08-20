

// ignore_for_file: prefer_const_constructors

import 'dart:async';
// import 'dart:html;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   final Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex =  CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746
  );

  // ignore: unused_field
  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        Stack(children: [
             
              GoogleMap(
                       mapType: MapType.terrain,
                       initialCameraPosition: _kGooglePlex,
                       onMapCreated: (GoogleMapController controller) {
                         _controller.complete(controller);
                       },
                     ),
                     
             
              Positioned(
          top: 48.h,
          left: 15.w,right: 297.w,
          child: Container(height: 38.h,width: 42.w,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/humburger_icon.png'))),
          )),
        Positioned(
          top: 150.h,
          left: 239.w,
          right: 67.w,
          child: Container(height: 68.h , width: 68.w , 
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/Group 32.png'))),
          ),
        ),
        Positioned(
          top: 323.h,
          left: 58.w,
          right: 246.w,
          child: Container(height: 68.h , width: 68.w , 
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/map_car.png'))),
          ),
        ),
         Positioned(
          top: 373.h,
          left: 205.w,
          right: 101.w,
          child: Container(height: 68.h , width: 68.w , 
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/map_car.png'))),
          
        ),
      
         ),   
                     Align(
                      alignment: Alignment.bottomCenter,
                       child: Container(
                        padding: EdgeInsets.only(top: 36.h , right: 36.w , left: 36.w  ),
                                         height: 363.h , width: 375.w,
                                         color: Colors.white,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text('Hi James' , style:GoogleFonts.inter(fontSize: 16.sp , fontWeight: FontWeight.w500 , color: Color(0xffFF9800))),
                            SizedBox(height: 16.h),
                            Text('Where do you want to go?' , style: GoogleFonts.inter(fontSize: 20.sp , fontWeight: FontWeight.bold , color: Color(0xff242424))) , 
                            SizedBox(height: 24.h),
                           TextField(decoration: InputDecoration(fillColor: Color(0xffEBEBEB) , filled: true , 
                           enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Color(0xffEBEBEB) ) ),
                           contentPadding: EdgeInsets.only(top: 23.h , left: 20.h , bottom: 19.h , right: 160.w),
                           hintText: 'Enter destination' , 
                           hintStyle: GoogleFonts.inter(fontSize: 14.sp , fontWeight: FontWeight.w500 , color: Color(0xff242424)) 
                           )) , 
                           Container(padding: EdgeInsets.only(top: 24.h),
                           child:
                            
                            Padding(
                              padding: EdgeInsets.only(bottom:12.h),
                              child: Row(children: [
                              Center(child: Text('Home' , style: GoogleFonts.inter(fontSize:12.sp , fontWeight: FontWeight.bold , 
                              color: Color(0xff9F9F9F)
                              ),)) , 
                              SizedBox(width: 13.w),
                              Expanded(child: Text('Willian Creek Camp Ground & Units, 1 Bill Rivers Avenue William Creek William Creek' , 
                              style: GoogleFonts.inter(fontSize: 12.sp , fontWeight: FontWeight.w500 , color: Color(0xff242424)),
                              )),
                                                      
                                                       ],),
                            ),
                           
                      
                           ),
                           Divider(),
                           
                          
                              Padding(
                                padding: EdgeInsets.only(top: 12.h , bottom: 12.h),
                                child: Row(children: [
                                Center(child: Text('Work' , style: GoogleFonts.inter(fontSize:12.sp , fontWeight: FontWeight.bold , 
                                color: Color(0xff9F9F9F)
                                ),)) , 
                                SizedBox(width: 13.w),
                                Expanded(child: Text('Willian Creek Camp Ground & Units, 1 Bill Rivers Avenue William Creek William Creek' , 
                                style: GoogleFonts.inter(fontSize: 12.sp , fontWeight: FontWeight.w500 , color: Color(0xff242424)),
                                ))
                                                           ],),
                              ),
                           
                           Divider(),
                              Padding(
                                padding: EdgeInsets.only(bottom: 30.h , top: 12.h),
                                child: Row(children: [
                                      Center(child: Text('Office' , style: GoogleFonts.inter(fontSize:12.sp , fontWeight: FontWeight.bold , 
                                      color: Color(0xff9F9F9F)
                                      ),)) , 
                                      SizedBox(width: 13.w),
                                      Expanded(child: Text('Willian Creek Camp Ground & Units, 1 Bill Rivers Avenue William Creek William Creek' , 
                                      style: GoogleFonts.inter(fontSize: 12.sp , fontWeight: FontWeight.w500 , color:Color(0xff242424)),
                                      ))
                                                 ],),
                              ),
                              
                             
                                               
                            
                                     
                           ]),
                        )
                                ),
                     ),
                  
              
              
        
                 
        
        ]));    
    
    
  }

  
}
