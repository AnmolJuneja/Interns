import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/big_text.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/small_text.dart';
import 'package:get/get.dart';
import 'package:reelpro/consts/text_field.dart';
import 'package:reelpro/consts/upper_design.dart';
import 'package:reelpro/controllers/registeration_controllers.dart';
import 'package:reelpro/models/step_two.dart';
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/view_models/register_user_request/otp_view_model.dart';
// import 'package:reelpro/view_models/register_user_request/registeration_step_two.dart';
// import 'package:reelpro/view_models/register_user_request/verify_otp.dart';
import 'package:reelpro/views/bottom_navigation_screens/bottom_navigation.dart';
import 'package:reelpro/views/registeration_screens/registeration_screen.dart';

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
  var verify = Get.put(OtpViewModel());
  final instance = Get.put(RegistrationStepTwo2());
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
    return Scaffold(
        backgroundColor: const Color(0xffF2F9FF),
        body: Stack(children: [
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
                      // SizedBox(height: 350.h),
                    ]),
              )),
          Positioned(
              top: 736.h, child: Image.asset('assets/images/bottom-wave.png')),
          Positioned(
              top: 726.h,
              left: 36.w,
              right: 36.w,
              child: MyButton(
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
                      res1.data!.profilePic != null
                          ? SaveProfilePic()
                              .saveProfilePic(res1.data!.profilePic)
                          : null;
                      SaveFirstName()
                          .saveFirstName(res1.data!.firstname.toString());
                      SaveLastName()
                          .saveLastName(res1.data!.lastname.toString());
                      SaveEmail().saveEmail(res1.data!.email.toString());
                      Dob().saveDob(res1.data!.dob.toString());
                      Gender().saveGender('${res1.data!.gender}');
                      SaveUserId().setId(res1.data!.id!);
                      SharedPreferences1().setToken(res1.data!.authToken ?? '');
                      if (res1.data!.firstname != null) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    BottomNavigation(currentIndex: 2)),
                            (route) => false);
                      } else {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterationScreen(
                                    authToken: res1.data!.authToken)),
                            (route) => false);
                      }
                    });
                  },
                  buttonText: 'Continue')),
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
