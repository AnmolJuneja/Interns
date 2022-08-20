// import 'package:country_codes/country_codes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:country_codes/country_codes.dart';

class InfoFillPage extends StatefulWidget {
  const InfoFillPage({Key? key}) : super(key: key);

  @override
  State<InfoFillPage> createState() => _InfoFillPageState();
}

class _InfoFillPageState extends State<InfoFillPage> {
  num text = 91;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 112.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/login_top_bg.png'))),
            ),
            Container(
                padding: EdgeInsets.only(top: 52.h, left: 36.w, right: 23.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Create a new account',
                        style: GoogleFonts.inter(
                            fontSize: 23.sp, fontWeight: FontWeight.bold)),
                    SizedBox(height: 16.h),
                    Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: GoogleFonts.inter(
                            fontSize: 15, color: const Color(0xff9F9F9F)))
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(top: 66.h, left: 33.w, right: 10.w),
                child: Column(children: [
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'John',
                          hintStyle: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff242424)),
                          contentPadding: EdgeInsets.only(
                              top: 19.h,
                              left: 20.w,
                              bottom: 15.h,
                              right: 170.w),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)))),
                  SizedBox(height: 8.h),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'Doe',
                          hintStyle: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff242424)),
                          contentPadding: EdgeInsets.only(
                              top: 19.h,
                              left: 20.w,
                              bottom: 15.h,
                              right: 170.w),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)))),
                  SizedBox(height: 8.h),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'johndoe@yatilabs.com',
                          hintStyle: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff242424)),
                          contentPadding: EdgeInsets.only(
                              top: 19.h,
                              left: 20.w,
                              bottom: 15.h,
                              right: 170.w),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)))),
                  SizedBox(height: 8.h),
                   const TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        
                       hintText: '90231487642',
                      
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder:  OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)))),
                ])),
            Padding(
              padding: EdgeInsets.only(top: 38.h, left: 36.w, right: 40.w),
              child: Row(
                children: [
                  Container(
                    height: 25.h,
                    width: 25.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    child: const Icon(
                      FontAwesomeIcons.check,
                      size: 14,
                      color: Color(0xffFF9800),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Text('By click you accept the ',
                      style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff9F9F9F))),
                  Expanded(
                    child: Text('Terms & conditions',
                        style: GoogleFonts.inter(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 35.h, bottom: 154.h, left: 36.w, right: 36.w),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xff242424)),
                  // ignore: sized_box_for_whitespace
                  onPressed: () {},
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 13.h, left: 110.w, bottom: 8.h, right: 75.w),
                    height: 48.h,
                    width: 303.w,
                    child: Text(
                      'Register',
                      style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffF5F5F5)),
                    ),
                  )),
            ),
          ]),
        ));
  }
}
