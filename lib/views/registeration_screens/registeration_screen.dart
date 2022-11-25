// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// / ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/big_text.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/small_text.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/consts/text_field.dart';
import 'package:reelpro/consts/text_fieldc.dart';
import 'package:reelpro/consts/toggle_container.dart';
import 'package:reelpro/consts/upper_design.dart';
import 'package:reelpro/controllers/feed_and_catch_controllers.dart';
import 'package:reelpro/controllers/registeration_controllers.dart';
import 'package:reelpro/models/registeration.dart';
import 'package:reelpro/models/registration_step_two.dart';
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/view_models/register_user_request/otp_view_model.dart';
import 'package:reelpro/controllers/validate_email_controller.dart';
import 'package:reelpro/views/bottom_navigation_screens/bottom_navigation.dart';
import 'package:reelpro/views/family_and_profile_screens/profile_settings.dart';
// import 'package:reelpro/view_models/register_user_request/registeration.dart';
import 'package:reelpro/views/registeration_screens/address.dart';
import 'package:reelpro/views/registeration_screens/registeration_step_two.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class RegisterationScreen extends StatefulWidget {
  String? authToken;

  RegisterationScreen({
    Key? key,
    required this.authToken,
  }) : super(key: key);

  @override
  State<RegisterationScreen> createState() => _RegisterationScreenState();
}

class _RegisterationScreenState extends State<RegisterationScreen> {
  TextEditingController textEditingController1 = TextEditingController();

  TextEditingController textEditingController2 = TextEditingController();

  TextEditingController textEditingController4 = TextEditingController();

  TextEditingController textEditingController5 = TextEditingController();

  final register = Get.put(OtpViewModel());

  final validateEmail = Get.put(ValidateEmail());
  final double lat = 30.403648;
  var date;
  final double lng = 74.027962;
  List<String> items = <String>['Male', 'Female'];
  var gender = 'Gender'.obs;
  var firstName;
  var lastName;
  var sld = ''.obs;
  DateTime dateTime = DateTime.now();
  @override
  void initState() {
    textEditingController4.text = ""; //set the initial value of text field

    super.initState();
  }

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
          const Upper(),
          Positioned(
              top: 140.h,
              left: 36.w,
              right: 36.w,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BigText(
                        color: Color(0xff2B67A3), text: 'Registeration'),
                    const SmallText(
                        text:
                            "Tell us a little bit about yourself so we know it's you",
                        color: Color(0xff485058)),
                    SizedBox(height: 40.h),
                    TextFEmail(
                        textEditingController: textEditingController1,
                        hintText: 'Firstname',
                        textInputType: TextInputType.name,
                        prefix: null,
                        onSaved: (value) {},
                        onchanged: (value) {},
                        keyValue: null,
                        suffixText: null,
                        validator: (value) {
                          return null;
                        }),
                    SizedBox(height: 8.h),
                    TextFEmail(
                        onSaved: (value) {},
                        textEditingController: textEditingController2,
                        hintText: 'Last name',
                        textInputType: TextInputType.name,
                        prefix: null,
                        onchanged: (value) {},
                        keyValue: null,
                        suffixText: null,
                        validator: (value) {
                          return null;
                        }),
                    SizedBox(height: 8.h),
                    TextFEmail(
                        textEditingController: validateEmail.emailController,
                        onchanged: (value) {},
                        hintText: 'Email',
                        textInputType: TextInputType.emailAddress,
                        prefix: null,
                        keyValue: validateEmail.formKey,
                        onSaved: (value) {
                          validateEmail.email = value!;
                        },
                        validator: (value) {
                          return validateEmail.validateEmailFunction(value!);
                        },
                        suffixText: null),
                    SizedBox(height: 8.h),
                    GestureDetector(
                      onTap: () {
                        Get.bottomSheet(Column(children: [
                          SizedBox(height: 200.h),
                          SizedBox(
                            height: 200.h,
                            child: CupertinoDatePicker(
                                mode: CupertinoDatePickerMode.date,
                                backgroundColor: const Color(0xffF2F9FF),
                                onDateTimeChanged: (value) {
                                  dateTime = value;
                                },
                                initialDateTime: dateTime),
                          ),
                          SizedBox(height: 20.h),
                          MyButton(
                              onpressed: () {
                                sld.value =
                                    '${dateTime.day}-${dateTime.month}-${dateTime.year}';
                                Navigator.pop(context);
                              },
                              buttonText: 'Done')
                        ]));
                      },
                      child: Container(
                        height: 56.h,
                        width: 356.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            border: Border.all(
                                width: 1,
                                color:
                                    const Color.fromRGBO(113, 154, 195, 0.16))),
                        child: Container(
                            padding: EdgeInsets.only(right: 232.w),
                            child: Center(
                                child: Obx(() => sld.value == ''
                                    ? Text15PtGrey(text: 'Date Of Birth')
                                    : Text(sld.value)))),
                      ),
                    ),
                    SizedBox(height: 8.h),
                    GestureDetector(
                      onTap: () {
                        Get.bottomSheet(Container(
                            padding: EdgeInsets.only(top: 30.h),
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(25)),
                                color: Color(0xffF2F9FF)),
                            height: 350.h,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListView(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    children: glist
                                        .map(
                                          (e) => GestureDetector(
                                              onTap: () {
                                                gender.value = e;
                                              },
                                              child: Obx(() => ToggleContainer(
                                                  color: gender.value == e
                                                      ? AddFeedApi1()
                                                          .selectedItemcolor1
                                                          .value
                                                      : AddFeedApi1()
                                                          .transparentColor1
                                                          .value,
                                                  isSelected: gender.value == e
                                                      ? true
                                                      : false,
                                                  text: e))),
                                        )
                                        .toList(),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: Platform.isAndroid ? 50.h : 0.h,
                                        left: 36.w,
                                        right: 36.w),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Button56(
                                            onpressed: () {
                                              Navigator.pop(context);
                                              gender.value = 'Gender';
                                            },
                                            buttonText: 'Cancel',
                                            textColor: Colors.black,
                                            width: 1,
                                            widthColor: Colors.black,
                                            color: const Color(0xffF2F9FF)),
                                        Button56Blue(
                                            onpressed: () {
                                              Navigator.pop(context);
                                            },
                                            buttonText: 'Done',
                                            textColor: const Color(0xffF2F9FF),
                                            color: const Color(0xff2B67A3))
                                      ],
                                    ),
                                  )
                                ])));
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 20.w, top: 15.h),
                        height: 52.h,
                        width: 356.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color:
                                    const Color.fromRGBO(113, 154, 195, 0.16)),
                            boxShadow: const [
                              BoxShadow(
                                  // ignore: use_full_hex_values_for_flutter_colors
                                  color: Color.fromRGBO(113, 154, 195, 0.16),
                                  blurRadius: 0,
                                  offset: Offset(0, 4))
                            ],
                            borderRadius: BorderRadius.circular(5)),
                        child: Obx(() => gender.value == 'Gender'
                            ? Text14PtGrey(text: 'Gender')
                            : Text(gender.value)),
                      ),
                    ),
                    SizedBox(height: 156.h),
                    MyButton(
                        onpressed: () async {
                          await register
                              .registerUser(
                                  sld.value,
                                  validateEmail.emailController.text,
                                  gender.value,
                                  textEditingController1.text,
                                  textEditingController2.text,
                                  lat,
                                  lng,
                                  widget.authToken!)
                              .then(
                            (value) {
                              // ignore: unused_local_variable
                              var res = Registration.fromJson(value.data);
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const UserAddressScreen()),
                                  (route) => false);
                              SaveFirstName()
                                  .saveFirstName('${res.data!.firstname}');
                              SaveLastName()
                                  .saveLastName('${res.data!.lastname}');
                              SaveEmail().saveEmail('${res.data!.email}');
                              Dob().saveDob('${res.data!.dob}');
                              Gender().saveGender('${res.data!.gender}');
                              SaveUserId().setId(res.data!.id!);
                            },
                          );
                        },
                        buttonText: 'Continue')
                  ])),
          Positioned(
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

  final List<String> glist = ['Male', 'Female', 'Transgender'];
}
