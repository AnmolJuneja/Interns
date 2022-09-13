import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/big_text.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/small_text.dart';
import 'package:dio/dio.dart' as dio;
import 'package:reelpro/consts/text_field.dart';
import 'package:reelpro/consts/upper_design.dart';
import 'package:reelpro/models/login.dart';
import 'package:get/get.dart';
import 'package:reelpro/view_models/otp_view_model.dart';
import 'package:reelpro/views/otp_screen.dart';
// import 'package:country_codes/country_codes.dart';
import 'package:country_picker/country_picker.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  TextEditingController textEditingController = TextEditingController();
  final otp = Get.put(OtpViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F9FF),
      body: Stack(
        children: [
          Positioned(
              top: 736.h,
              child: const Image(
                  image: AssetImage('assets/images/bottom-wave.png'))),
             Upper()
          ,
          Positioned(
              left: 36.w,
              top: 160.h,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                        color: const Color(0xff2B67A3),
                        text: 'Enter your digits'),
                    SmallText(
                        text: 'Please enter your phone number',
                        color: const Color(0xff485058)), // SizedBox(height: 36.h),
                  ])),
          Positioned(
              top: 316.h,
              left: 41.w,
              right: 31.w,
              child: Column(
                children: [
                TextF(textEditingController: textEditingController,
                 hintText: 'Phone number' , textInputType: TextInputType.number,
                  prefix: Text('+91')),
                  SizedBox(height: 358.h),
                MyButton(onpressed: ()async{
                         await otp
                            .getOtp(textEditingController.text, '+91')
                            .then((value) {
                          // ignore: unused_local_variable
                          var res = Login.fromJson(value.data);
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => OtpScreen(
                                    confirmationToken:
                                        res.data!.confirmationToken.toString(),
                                    otp: res.data!.otp.toString(),
                                  )));
                          print(res.data!.confirmationToken);
                        });
                      }, buttonText: 'Continue') 
                ],
              )),
          Positioned(
              // bottom: 779.h,
              right: 36.w,
              top: 80.h,
              child: Image(
                image: const AssetImage('assets/images/Layer 2.png'),
                height: 67.h,
                width: 67.w,
              )),
        ],
      ),
    );
  }
}
