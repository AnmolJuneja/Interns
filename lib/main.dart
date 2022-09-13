import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/models/create_team.dart';
import 'package:reelpro/models/team_list.dart';
import 'package:reelpro/views/create_team.dart';
import 'package:reelpro/views/edit_profile.dart';
import 'package:reelpro/views/home_screen.dart';
import 'package:reelpro/views/manage_team_screen.dart';
import 'package:reelpro/views/onboarding_screen.dart';
import 'package:reelpro/views/registeration_step_two.dart';
import 'package:reelpro/views/splash_screen.dart';
import 'package:reelpro/views/otp_screen.dart';
import 'package:reelpro/views/registeration_screen.dart';
import 'package:get/get.dart';
import 'package:reelpro/views/team_list.dart';
import 'package:reelpro/views/view_team.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: (context, child) =>
            const GetMaterialApp(home: OnBoardingScreen()));
  }
}
