import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/big_text.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/small_text.dart';
import 'package:reelpro/consts/text_field.dart';
import 'package:reelpro/consts/upper_design.dart';
import 'package:reelpro/controllers/registeration_controllers.dart';
import 'package:reelpro/models/login.dart';
import 'package:get/get.dart';
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/view_models/register_user_request/otp_view_model.dart';
import 'package:reelpro/controllers/validate_email_controller.dart';
import 'package:reelpro/views/registeration_screens/otp_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  TextEditingController textEditingController = TextEditingController();
  final validatePhone = Get.put(PhoneValidator());
  final otp = Get.put(RegistrationStepTwo2());
  final otp1 = Get.put(OtpViewModel());
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
          const Upper(),
          Positioned(
              left: 36.w,
              top: 160.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BigText(
                      color: Color(0xff2B67A3), text: 'Enter your digits'),
                  const SmallText(
                    text: 'Please enter your phone number',
                    color: Color(0xff485058),
                  ),
                  SizedBox(height: 76.h),
                  TextF10(
                    textEditingController: textEditingController,
                    onchanged: (value) {
                      if (value.isPhoneNumber) {
                        errorText.value = '';
                      }
                    },
                    hintText: 'Phone number',
                    textInputType: TextInputType.number,
                    keyValue: validatePhone.formKey,
                    onSaved: (value) {
                      errorText.value = value!;
                    },
                    validator: (value) {
                      return null;
                    },
                  ),
                  SizedBox(height: 5.h),
                  Obx(() => Text(
                        errorText.value,
                        style: const TextStyle(color: Colors.red),
                      )),
                  SizedBox(height: 348.h),
                  MyButton(
                      onpressed: () {
                        if (!textEditingController.text.isPhoneNumber) {
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
    await otp1
        .getOtp(textEditingController.text, '+${otp.countryText.value}')
        .then((value) async {
      var res = Login.fromJson(value.data);
      await SaveNumber().saveNumber(textEditingController.text);
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
              builder: (context) => OtpScreen(
                  otp: res.data!.otp.toString(),
                  confirmationToken: res.data!.confirmationToken.toString(),
                  countryCode: '+${otp.countryText}',
                  number: textEditingController.text)),
          (route) => false);
    });
  }
}
