import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sizer/views/cabs_page.dart';
import 'package:sizer/views/create_new_account_page.dart';
import 'package:sizer/views/create_password.dart';
import 'package:sizer/views/driver_cab_page.dart';
import 'package:sizer/views/forgot_password_page.dart';
import 'package:sizer/views/home_page.dart';
import 'package:sizer/views/incorrect_password_page.dart';
import 'package:sizer/views/info_fill_page.dart';
import 'package:sizer/views/login_page.dart';
import 'package:sizer/views/onboarding_page.dart';
import 'package:sizer/views/path_page.dart';
import 'package:sizer/views/payment_method.dart';
import 'package:sizer/views/verify_number.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize:  const Size(375, 812),
      builder: (context , child) {
        return  const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: PaymentMethod()
        );
      }
    );
  }
}