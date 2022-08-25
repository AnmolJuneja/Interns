import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/views/trips_page.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        body: SafeArea(
            child: Container(
          padding: EdgeInsets.only(top: 48.h, left: 36.w, right: 25.w),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Image(
                    image: const AssetImage('assets/images/back_btn_white.png'),
                    height: 38.h,
                    width: 38.w,
                  ),
                  SizedBox(width: 24.w),
                  Text(
                    'Payment method',
                    style: GoogleFonts.inter(
                        fontSize: 23.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff242424)),
                  )
                ],
              ),
              SizedBox(height: 41.h),
              Container(
                  padding: EdgeInsets.only(left: 5.w),
                  child: Row(
                    children: [
                      Image(
                          image: const AssetImage(
                              'assets/images/personal_payment.png'),
                          height: 18.h,
                          width: 18.w),
                      SizedBox(height: 34.h),
                      SizedBox(width: 12.w),
                      Text(
                        'Personal',
                        style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff9F9F9F)),
                      )
                    ],
                  )),
              SizedBox(height: 34.h),
              Container(
                  padding: EdgeInsets.only(left: 5.w),
                  child: Row(children: [
                    Image(
                        image:
                            const AssetImage('assets/images/personal_card.png'),
                        height: 14.74.h,
                        width: 18.95.w),
                    SizedBox(
                      width: 30.05.w,
                    ),
                    Text('xxxx xxxx 4793',
                        style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff242424))),
                    SizedBox(width: 142.04.w),
                    Image(
                        image:
                            const AssetImage('assets/images/paymnet_check.png'),
                        height: 8.92.h,
                        width: 11.96.w),
                  ])
                  // ignore: prefer_const_literals_to_create_immutables
                  ),
              Container(
                  padding: EdgeInsets.only(left: 54.w, top: 16.h),
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Column(
                    children: [
                      const Divider(
                        thickness: 1,
                      )
                    ],
                  )),
              SizedBox(height: 17.h),
              Container(
                padding: EdgeInsets.only(left: 7.w),
                child: Row(
                  children: [
                    Image(
                        image: const AssetImage('assets/images/add_card.png'),
                        height: 14.h,
                        width: 14.w),
                    SizedBox(width: 33.47.w),
                    Text('Add personal card',
                        style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff242424)))
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(left: 5.w, top: 59.h),
                  child: Row(children: [
                    Image(
                        image: const AssetImage(
                            'assets/images/business_payment.png'),
                        height: 17.h,
                        width: 18.w),
                    SizedBox(width: 12.w),
                    Text('Business',
                        style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff9F9F9F)))
                  ])),
              Container(
                  padding: EdgeInsets.only(top: 34.h, left: 5.w),
                  child: Row(children: [
                    Image(
                        image:
                            const AssetImage('assets/images/business_card.png'),
                        height: 14.74.h,
                        width: 18.95.w),
                    SizedBox(width: 30.05.w),
                    Text(
                      'xxxx xxxx 4793',
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff242424)),
                    )
                  ])),
              // ignore: prefer_const_constructors
              Container(
                  padding: EdgeInsets.only(left: 54.w, top: 16.h),
                  child: Divider(thickness: 1)),
              Container(
                  padding: EdgeInsets.only(top: 18.h, left: 7.w),
                  child: Row(
                    children: [
                      Image(
                          image: const AssetImage('assets/images/add_card.png'),
                          height: 14.h,
                          width: 14.w),
                      SizedBox(width: 33.47.w),
                      Text(
                        'Add business card',
                        style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff242424)),
                      )
                    ],
                  )),
              Container(
                  padding: EdgeInsets.only(top: 59.h, left: 5.w),
                  child: Row(children: [
                    Image(
                        image: const AssetImage('assets/images/promo_gift.png'),
                        height: 16.h,
                        width: 18.w),
                    SizedBox(width: 12.w),
                    Text('Promo code',
                        style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff9F9F9F)))
                  ])),
              Container(
                padding: EdgeInsets.only(top: 36.h, left: 7.w),
                child: Row(
                  children: [
                    Image(
                        image: const AssetImage('assets/images/add_card.png'),
                        height: 14.h,
                        width: 14.w),
                    SizedBox(width: 33.47.w),
                    Text(
                      'Add promo code',
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff242424)),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 56.h, bottom: 116.h),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xffFF9800)),
                    // ignore: sized_box_for_whitespace
                    onPressed: () {
                      Get.to(const TripsPage());
                    },
                    child: Container(
                      height: 48.h,
                      width: 303.w,
                      padding: EdgeInsets.only(
                          top: 10.5.h,
                          left: 120.w,
                          bottom: 10.5.h,
                          right: 95.w),
                      child: Text('Save',
                          style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xffF5F5F5))),
                    )),
              )
            ]),
          ),
        )));
  }
}
