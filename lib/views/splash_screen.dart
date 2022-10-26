import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/view_models/otp_view_model.dart';
import 'package:reelpro/view_models/registeration_step_two.dart';
import 'package:reelpro/view_models/team_list.dart';
import 'package:reelpro/views/onboarding_screen.dart';
import 'package:reelpro/views/profile_settings.dart';

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
  final teamApi = Get.put(TeamViewApi());
  final instanceTeam = Get.put(const ProfileSettingsUI());
  final instanceOtpViewModel = Get.put(OtpViewModel());
  navigateToOnboardingPage() async {
    // String teamCount = await SaveTeamCount().getTeamCount();
    // teamApi.getTeam1.value.length = ;
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
    String profilePic = await SaveProfilePic().getProfilePic();
    otp.profilePic1.value = profilePic;
    String description = await SaveDescription().getDescripton();
    otp.description.value = description;
    String country = await SaveCountryCode().getCountryCode();
    instanceOtpViewModel.countryText.value = country;
    String flag = await SaveFlah().getFlag();
    instanceOtpViewModel.flagEmoji.value = flag;
    if (authToken != '') {
      Future.delayed(const Duration(milliseconds: 2000));
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) =>  BottomNavigation(currentIndex: 2,)));
    } else {
      await Future.delayed(const Duration(milliseconds: 2000));
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const OnBoardingScreen()));
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
