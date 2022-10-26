import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/big_text.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/small_text.dart';
import 'package:get/get.dart';
import 'package:reelpro/consts/text_field.dart';
import 'package:reelpro/consts/upper_design.dart';
import 'package:reelpro/models/login_step_two.dart';
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/view_models/verify_otp.dart';
import 'package:reelpro/views/registeration_screen.dart';

class OtpScreen extends StatefulWidget {
  String otp;
  String confirmationToken;
  String countryCode;
  String number;
  OtpScreen(
      {Key? key,
      required this.otp,
      required this.confirmationToken,
      required this.countryCode,
      required this.number})
      : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  TextEditingController textEditingController3 = TextEditingController();
  TextEditingController textEditingController4 = TextEditingController();
  @override
  void initState() {
    textEditingController1.text = widget.otp[0];
    textEditingController2.text = widget.otp[1];
    textEditingController3.text = widget.otp[2];
    textEditingController4.text = widget.otp[3];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var verify = Get.put(VerifyOtp());

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
              right: 40.w,
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const BigText(
                          color: Color(0xff2B67A3), text: 'Enter OTP'),
                      SmallText(
                          text:
                              'Enter the confirmation code sent to your phone number "${widget.countryCode}${widget.number}"',
                          color: const Color(0xff485058)),
                      SizedBox(height: 52.h),
                      Row(
                        children: [
                          TextFS(
                              textEditingController: textEditingController1,
                              hintText: '0',
                              textInputType: TextInputType.number,
                              prefix: null),
                          SizedBox(width: 12.w),
                          TextFS(
                              textEditingController: textEditingController2,
                              hintText: '0',
                              textInputType: TextInputType.number,
                              prefix: null),
                          SizedBox(width: 12.w),
                          TextFS(
                              textEditingController: textEditingController3,
                              hintText: '0',
                              textInputType: TextInputType.number,
                              prefix: null),
                          SizedBox(width: 12.w),
                          TextFS(
                              textEditingController: textEditingController4,
                              hintText: '0',
                              textInputType: TextInputType.number,
                              prefix: null),
                          SizedBox(width: 12.w),
                        ],
                      ),
                      SizedBox(height: 350.h),
                      MyButton(
                        onpressed: () async {
                          await verify
                              .verifyOtp(
                                  textEditingController1.text +
                                      textEditingController2.text +
                                      textEditingController3.text +
                                      textEditingController4.text,
                                  widget.confirmationToken)
                              .then((value) async {
                            var res1 = StepTwo.fromJson(value.data);
                            SharedPreferences1()
                                .setToken(res1.data!.authToken ?? '');
                            // print(res1.data!.authToken);
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => RegisterationScreen(
                                        authToken:
                                            res1.data!.authToken.toString())));
                          });
                        },
                        buttonText: 'Continue',
                      ),
                    ]),
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
}
