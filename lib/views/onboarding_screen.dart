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
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/view_models/otp_view_model.dart';
import 'package:reelpro/view_models/validator.dart';
import 'package:reelpro/views/otp_screen.dart';
import 'package:get/get.dart';
import 'package:country_code_picker/country_code.dart';
import 'package:country_code_picker/country_code.dart';
import 'package:country_picker/country_picker.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  TextEditingController textEditingController = TextEditingController();
  final validatePhone = Get.put(PhoneValidator());
  final otp = Get.put(OtpViewModel());
  var errorText = ''.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF2F9FF),
        body: Stack(children: [
          Positioned(
              top: 736.h,
              child: const Image(
                  image: AssetImage('assets/images/bottom-wave.png'))),
          Upper(),
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
                    color: const Color(0xff485058),
                  ),
                  SizedBox(height: 76.h),
                  TextF10(
                    textEditingController: textEditingController,
                    onchanged: (value) {
                      if (value.length == 10) {
                        errorText.value = '';
                      }
                    },
                    hintText: 'Phone number',
                    textInputType: TextInputType.number,
                    keyValue: validatePhone.formKey,
                    onSaved: (value) {
                      errorText.value = value!;
                    },
                    validator: (value) {},
                  ),
                  SizedBox(height: 5.h),
                  Obx(() => Text(
                        errorText.value,
                        style: TextStyle(color: Colors.red),
                      )),
                  SizedBox(height: 348.h),
                  MyButton(
                      onpressed: () {
                        if (textEditingController.text.length <= 9) {
                          errorText.value = 'Please enter a valid phone number';
                        } else {
                          login();
                        }
                      },
                      buttonText: 'Continue')
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
        ]));
  }

  login() async {
    await otp
        .getOtp(textEditingController.text, otp.countryText.value)
        .then((value) async {
      var res = Login.fromJson(value.data);
      await SaveNumber().saveNumber('${res.data!.phoneNumber}');
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => OtpScreen(
                confirmationToken: res.data!.confirmationToken.toString(),
                otp: res.data!.otp.toString(),
                number: textEditingController.text,
                countryCode: otp.countryText.value,
              )));
    });
  }
}
