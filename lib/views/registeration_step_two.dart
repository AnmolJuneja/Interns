import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/appbar.dart';
import 'package:reelpro/consts/big_text.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/label_text.dart';
import 'package:reelpro/consts/small_container.dart';
import 'package:reelpro/consts/small_text.dart';
import 'package:get/get.dart';
import 'package:reelpro/consts/step_two.dart';
import 'package:reelpro/consts/text_field.dart';
import 'package:reelpro/consts/upper_design.dart';
import 'package:reelpro/models/edit_profile.dart';
import 'package:reelpro/models/registration_step_two.dart';
import 'package:reelpro/view_models/registeration_step_two.dart';
import 'package:reelpro/views/edit_profile.dart';

class Registeration2 extends StatefulWidget {
  const Registeration2({Key? key}) : super(key: key);

  @override
  State<Registeration2> createState() => _Registeration2State();
}

class _Registeration2State extends State<Registeration2> {
  @override
  Widget build(BuildContext context) {
    var registerationTwo = Get.put(RegistrationStepTwo2());
    var fishingType = 'Salt Water';
    bool isActive = false;
    String vetran = '0';
    TextEditingController shirtSizeController = TextEditingController();
    TextEditingController clubController = TextEditingController();
    // ignore: use_full_hex_values_for_flutter_colors
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
            top: 0.h,
            bottom: 0.h,
            left: 36.w,
            right: 36.w,
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const StepTwo(),
                    BigText(
                        color: const Color(0xff2B67A3), text: 'Registeration'),
                    Padding(
                        padding: EdgeInsets.only(right: 50.w),
                        child: SmallText(
                            text:
                                'This will be helpful to suggest upcoming events',
                            color: const Color(0xff485058))),
                    SizedBox(height: 40.h),
                    LabelText(text: 'Fishing Type'),
                    SizedBox(height: 13.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallContainer(text: 'SaltWater'),
                        SmallContainer(text: 'FreshWater'),
                        SmallContainer(text: 'Both')
                      ],
                    ),
                    SizedBox(height: 26.h),
                    LabelText(text: 'Shirt Size'),
                    SizedBox(height: 13.h),
                    TextF(
                        textEditingController: shirtSizeController,
                        hintText: 'Select',
                        textInputType: TextInputType.number,
                        prefix: null),
                    SizedBox(height: 20.h),
                    LabelText(text: 'Veteran'),
                    SizedBox(height: 13.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       BigContainer(
                                text: 'Yes',),
                        // ignore: use_full_hex_values_for_flutter_colors
                      BigContainer(
                                text: 'No',
                              )
                      ],
                    ),
                    SizedBox(height: 20.h),
                    LabelText(text: 'Club'),
                    SizedBox(height: 13.h),
                    TextF(
                        textEditingController: clubController,
                        hintText: 'Select',
                        textInputType: TextInputType.text,
                        prefix: null),
                    SizedBox(height: 46.h),
                    MyButton(
                        onpressed: () async {
                          await registerationTwo
                              .registersteptwo(
                                  fishingType,
                                  shirtSizeController.text,
                                  vetran,
                                  clubController.text)
                              .then((value) {});
                          // Get.to(const EditProfile1());
                        },
                        buttonText: 'Submit')
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
