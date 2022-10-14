import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/view_models/registeration_step_two.dart';
import 'package:reelpro/views/home_screen.dart';
import 'package:reelpro/views/onboarding_screen.dart';

import 'bottom_navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToOnboardingPage();
  }

  final otp = Get.put(RegistrationStepTwo2());
  navigateToOnboardingPage() async {
    String firstLastName = await SaveFirstName().getFirstName();
    otp.firstName1.value = firstLastName;
    String lastName = await SaveLastName().getLastName();
    otp.lastName1.value = lastName;
    String authToken = await SharedPreferences1().getToken();
    String email = await SaveEmail().getEmail();
    otp.email1.value = email;
    String gender = await Gender().getGender();
    otp.gender1.value = gender;
    String dob = await Dob().getDob();
    otp.dob1.value = dob;
    String number = await SaveNumber().getNumber();
    otp.number.value = number;
    if (authToken != '') {
      Future.delayed(const Duration(milliseconds: 2000));
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => BottomNavigation()));
    } else {
      await Future.delayed(const Duration(milliseconds: 2000));
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // ignore: prefer_const_literals_to_create_immutables
      body: Stack(
        children: [
          Positioned(
              bottom: 389.h,
              child: const Image(
                  image: AssetImage('assets/images/Rectangle 5.png'))),
          Positioned(
              bottom: 371.36.h,
              left: 118.w,
              right: 118.w,
              child:
                  const Image(image: AssetImage('assets/images/Group 18.png'))),
          Positioned(
              left: 118.w,
              right: 118.w,
              bottom: 333.5.h,
              child:
                  const Image(image: AssetImage('assets/images/ReelPro.png'))),
          Positioned(
              top: 736.h,
              child: const Image(
                  image: AssetImage('assets/images/bottom-wave.png')))
        ],
      ),
    );
  }
}
