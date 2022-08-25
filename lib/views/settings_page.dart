import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(padding: EdgeInsets.only(top: 48.h, left: 36.w), child: Row(children: [
              Image(image: const AssetImage('assets/images/humburger_icon.png'), height: 38.h, width: 42.w), SizedBox(width: 24.w),
              Text('Settings', style: GoogleFonts.inter(fontSize: 23.sp , fontWeight: FontWeight.bold, color: const Color(0xff242424)),)
            ])),
            Padding(padding: EdgeInsets.only(top: 50.h, left: 51.w), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(
                children: [
              Image(image: const AssetImage('assets/images/my_profile.png'), height: 13.5.h, width: 12.w), SizedBox(width: 27.w),
              Text('My profile', style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w500, color: const Color(0xff242424)),)
            ]),
           Padding(padding: EdgeInsets.only(top: 8.h, left: 36.w, right: 36.w), 
           child: const Divider( thickness: 1)),
           SizedBox(height: 11.5.h),
           Row(children: [
            Image(image: const AssetImage('assets/images/payment_methods.png'), height: 8.73.h, width:12.w),
            SizedBox(width: 27.w), Text('Payement methods', style: GoogleFonts.inter(fontSize: 14.sp , fontWeight: FontWeight.w500, 
            color: const Color(0xff242424)
            ))
           ]),
           Padding(padding: EdgeInsets.only(top:8.h , left: 36.w, right: 36.w), child: const Divider(thickness: 1)), 
            SizedBox(height:9.h), 
            Row(children: [
              Image(image: const AssetImage('assets/images/notification.png'), height: 13.33.h, width: 12.w), 
              SizedBox(width: 27.w), 
              Text('Notifications', style: GoogleFonts.inter(fontSize: 14.sp , fontWeight: FontWeight.w500, color: const Color(0xff242424))),
              SizedBox(width: 115.w), Container(
                padding: EdgeInsets.only(top: 2.h, left: 26.w, bottom: 2.h, right: 2.w),
                height: 24.h, width: 48.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(14), color: Colors.white),
              child: Image(image: const AssetImage('assets/images/notification_btn_circle.png'), height: 20.h, width: 20.w,),
              )
            ]), 
            Padding(padding: EdgeInsets.only(top: 8.h , left: 36.w, right: 36.w), child: const Divider(thickness: 1)), 
            SizedBox(height: 9.3.h), 
            Row(children: [
              Image(image: const AssetImage('assets/images/saved_address.png'), height: 11.41.h,width: 12.w), 
              SizedBox(width: 27.w), Text('Saved address', style: GoogleFonts.inter(fontSize:14.sp , fontWeight: FontWeight.w500, color: const Color(0xff242424)),)
            ],), 
            Padding(padding: EdgeInsets.only(top:8.h, left: 36.w, right: 36.w), child: const Divider(thickness: 1)), 
            ])
            ),
            Padding(padding: EdgeInsets.only(top: 70.h, left: 36.w , right: 36.w),child: Container(
              height: 154.h, width: 303.w, decoration: BoxDecoration(borderRadius: BorderRadius.circular(22), color: Colors.white),
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(top: 8.h, left: 24.w, right: 24.w),
                child: Text('Speak to available staff for assistance', style: GoogleFonts.inter(fontSize: 14.sp , fontWeight: FontWeight.w400, color: const Color(0xff9F9F9F)))), 
              SizedBox(height: 19.h), const Divider(thickness: 1),  
              Padding(
                padding: EdgeInsets.only(top: 12.h, bottom: 12.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Column(children: [
                    Image(image: const AssetImage('assets/images/contact_us.png'), height: 24.h,width: 24.w), 
                    SizedBox(height: 5.5.h), Text('Contact', style: GoogleFonts.inter(fontSize: 12.sp , fontWeight: FontWeight.w500, color: const Color(0xff9F9F9F)),)
                  ],), 
                  Column(children: [
                    Image(image: const AssetImage('assets/images/whatsapp_us.png'), height: 24.h,width: 24.w), SizedBox(height: 5.5.h),
                    Text('Whatsapp' , style: GoogleFonts.inter(fontSize: 12.sp , fontWeight: FontWeight.w500, color: const Color(0xff9F9F9F)),)
                  ],)
                ],),
              )
            ],),
            )), 
            Padding(padding: EdgeInsets.only(top: 72.h, left: 139.w , right: 138.w, bottom: 56.h), 
            child: Column(children: [
               Image(image: const AssetImage('assets/images/log_out@2x.png'), height: 40.h,width: 40.w), 
               SizedBox(height: 7.5.h), Text('Log Out', style: GoogleFonts.inter(fontSize: 14.sp , fontWeight: FontWeight.w500, color: const Color(0xff242424))),
            SizedBox(height: 75.h), Text('App version v1.0', style: GoogleFonts.inter(fontSize: 12.sp , fontWeight: FontWeight.w500, color: const Color(0xff9F9F9F)),)
            ],)
            )
          ],),
        ),
      ),
    );
  }
}
