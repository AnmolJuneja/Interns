import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/views/settings_page.dart';

class TripsPage extends StatelessWidget {
  const TripsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: EdgeInsets.only(top: 48.h, left: 36.w),
                child: Row(
                  children: [
                    const Image(
                        image: AssetImage('assets/images/humburger_icon.png')),
                    SizedBox(width: 24.w),
                    Center(
                        child: Text(
                      'Trips',
                      style: GoogleFonts.inter(
                          fontSize: 23.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff242424)),
                    ))
                  ],
                )),
            Padding(
              padding: EdgeInsets.only(top: 32.h, left: 36.w, right: 36.w),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Colors.white),
                  height: 214.h,
                  width: 303.w,
                  child: Column(children: [
                    Container(
                        height: 40.h,
                        width: 299.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: const Color(0xffFFF7EB)),
                        child: Container(
                          padding: EdgeInsets.only(
                              top: 14.h, left: 10.w, bottom: 10.h, right: 19.w),
                          child: Row(children: [
                            Text('#45635',
                                style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff9F9F9F))),
                            SizedBox(width: 36.w),
                            Text('Mon, 22 March 21 | 13:15 - 13:46',
                                style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xffFF9800)))
                          ]),
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
                        child: const Image(
                            image: AssetImage(
                                'assets/images/trip_card_bridge@2x.png'))),
                    Padding(
                        padding:
                            EdgeInsets.only(top: 9.h, left: 16.w, right: 16.w),
                        child: Row(children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '37 Shirley Street,',
                                  style: GoogleFonts.inter(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff242424)),
                                ),
                                Text(
                                  'Creek, Street',
                                  style: GoogleFonts.inter(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff242424)),
                                )
                              ]),
                          SizedBox(width: 78.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Sixth Avenue,',
                                style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff242424)),
                              ),
                              Text('Campasie, NSW',
                                  style: GoogleFonts.inter(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff242424)))
                            ],
                          )
                        ])),
                    Padding(
                        padding: EdgeInsets.only(top: 32.h, left: 16.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              image: const AssetImage(
                                  'assets/images/driver_profile.png'),
                              height: 42.h,
                              width: 42.w,
                            ),
                            SizedBox(width: 16.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Mr. Joe',
                                    style: GoogleFonts.inter(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xff242424))),
                                Text(
                                  'DH 729 29W4',
                                  style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff242424)),
                                ),
                                Text('Honda City',
                                    style: GoogleFonts.inter(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xff9F9F9F)))
                              ],
                            ),
                            SizedBox(width: 65.w),
                            Column(
                              children: [
                                Text(
                                  '\$40',
                                  style: GoogleFonts.inter(
                                      fontSize: 23.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xffFF9800)),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image(
                                      image: const AssetImage(
                                          'assets/images/Icon ionic-ios-star.png'),
                                      height: 12.69.h,
                                      width: 14.1.w,
                                    ),
                                    SizedBox(width: 8.w),
                                    Text(
                                      '3.5',
                                      style: GoogleFonts.inter(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xff9F9F9F)),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ))
                  ])),
            ),
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.only(left: 36.w),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Colors.white),
                  height: 214.h,
                  width: 303.w,
                  child: Column(children: [
                    Container(
                        height: 40.h,
                        width: 299.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: const Color(0xffFFF7EB)),
                        child: Container(
                          padding: EdgeInsets.only(
                              top: 14.h, left: 10.w, bottom: 10.h, right: 19.w),
                          child: Row(children: [
                            Text('#45635',
                                style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff9F9F9F))),
                            SizedBox(width: 36.w),
                            Text('Mon, 22 March 21 | 13:15 - 13:46',
                                style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xffFF9800)))
                          ]),
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
                        child: const Image(
                            image: AssetImage(
                                'assets/images/trip_card_bridge@2x.png'))),
                    Padding(
                        padding:
                            EdgeInsets.only(top: 9.h, left: 16.w, right: 16.w),
                        child: Row(children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '37 Shirley Street,',
                                  style: GoogleFonts.inter(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff242424)),
                                ),
                                Text(
                                  'Creek, Street',
                                  style: GoogleFonts.inter(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff242424)),
                                )
                              ]),
                          SizedBox(width: 78.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Sixth Avenue,',
                                style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff242424)),
                              ),
                              Text('Campasie, NSW',
                                  style: GoogleFonts.inter(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff242424)))
                            ],
                          )
                        ])),
                    Padding(
                        padding: EdgeInsets.only(top: 32.h, left: 16.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              image: const AssetImage(
                                  'assets/images/driver_profile.png'),
                              height: 42.h,
                              width: 42.w,
                            ),
                            SizedBox(width: 16.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Mr. Joe',
                                    style: GoogleFonts.inter(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xff242424))),
                                Text(
                                  'DH 729 29W4',
                                  style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff242424)),
                                ),
                                Text('Honda City',
                                    style: GoogleFonts.inter(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xff9F9F9F)))
                              ],
                            ),
                            SizedBox(width: 65.w),
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(const SettingsPage());
                                  },
                                  child: Text(
                                    '\$40',
                                    style: GoogleFonts.inter(
                                        fontSize: 23.sp,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xffFF9800)),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image(
                                      image: const AssetImage(
                                          'assets/images/Icon ionic-ios-star.png'),
                                      height: 12.69.h,
                                      width: 14.1.w,
                                    ),
                                    SizedBox(width: 8.w),
                                    Text(
                                      '3.5',
                                      style: GoogleFonts.inter(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xff9F9F9F)),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ))
                  ])),
            ),
          ]),
        ),
        bottomNavigationBar: Container(
            color: Colors.white,
            height: 80.h,
            width: 375.w,
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 125.w, right: 125.w),
                    child: Container(
                      height: 2.h,
                      width: 125.w,
                      color: const Color(0xffFF9800),
                    )),
                Padding(
                  padding: EdgeInsets.only(
                      top: 22.h, left: 28.w, bottom: 33.h, right: 28.w),
                  child: Row(
                    children: [
                      Text('Scheduled',
                          style: GoogleFonts.inter(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff9F9F9F))),
                      SizedBox(width: 51.w),
                      Text('Completed',
                          style: GoogleFonts.inter(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff242424))),
                      SizedBox(width: 53.w),
                      Text('Cancelled',
                          style: GoogleFonts.inter(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff9F9F9F)))
                    ],
                  ),
                ),
              ],
            )));
  }
}
