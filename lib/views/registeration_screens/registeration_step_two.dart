import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
import 'package:reelpro/controllers/registeration_controllers.dart';
import 'package:reelpro/models/edit_profile.dart';
import 'package:reelpro/models/registration_step_two.dart';
import 'package:reelpro/view_models/register_user_request/otp_view_model.dart';
// import 'package:reelpro/view_models/register_user_request/registeration_step_two.dart';
import 'package:reelpro/views/bottom_navigation_screens/bottom_navigation.dart';
import 'package:reelpro/views/bottom_navigation_screens/tracker.dart';
import 'package:reelpro/views/family_and_profile_screens/edit_profile.dart';
import 'package:reelpro/views/bottom_navigation_screens/home_screen.dart';
import 'package:reelpro/views/bottom_navigation_screens/message_screen.dart';

class Registeration2 extends StatefulWidget {
  const Registeration2({Key? key}) : super(key: key);

  @override
  State<Registeration2> createState() => _Registeration2State();
}

class _Registeration2State extends State<Registeration2> {
  String? _chosenValue;
  @override
  Widget build(BuildContext context) {
    var registerationTwo = Get.put(RegistrationStepTwo2());
    var registerationTwo1 = Get.put(OtpViewModel());
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
                    const BigText(
                        color: Color(0xff2B67A3), text: 'Registeration'),
                    Padding(
                        padding: EdgeInsets.only(right: 50.w),
                        child: const SmallText(
                            text:
                                'This will be helpful to suggest upcoming events',
                            color: Color(0xff485058))),
                    SizedBox(height: 40.h),
                    LabelText(text: 'Fishing Type'),
                    SizedBox(height: 13.h),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() => GestureDetector(
                                onTap: () {
                                  registerationTwo.color1.value =
                                      registerationTwo.blueColor.value;
                                  registerationTwo.color2.value =
                                      const Color.fromRGBO(113, 154, 195, 0.16);
                                  registerationTwo.color3.value =
                                      const Color.fromRGBO(113, 154, 195, 0.16);
                                  registerationTwo.fishingType = 'saltwater';
                                  registerationTwo.width1.value = 2.0;
                                  registerationTwo.width2.value = 1.0;
                                  registerationTwo.width3.value = 1.0;
                                },
                                child: SmallContainer(
                                  text: 'Saltwater',
                                  color: registerationTwo.color1.value,
                                  width: registerationTwo.width1.value,
                                ),
                              )),
                          Obx(() => GestureDetector(
                                onTap: () {
                                  registerationTwo.color2.value =
                                      const Color(0xff719AC3);
                                  registerationTwo.color1.value =
                                      const Color.fromRGBO(113, 154, 195, 0.16);
                                  registerationTwo.color3.value =
                                      const Color.fromRGBO(113, 154, 195, 0.16);
                                  registerationTwo.fishingType = 'freshwater';
                                  registerationTwo.width2.value = 2.0;
                                  registerationTwo.width1.value = 1.0;
                                  registerationTwo.width3.value = 1.0;
                                },
                                child: SmallContainer(
                                  text: 'FreshWater',
                                  color: registerationTwo.color2.value,
                                  width: registerationTwo.width2.value,
                                ),
                              )),
                          Obx(() => GestureDetector(
                                onTap: () {
                                  registerationTwo.color3.value =
                                      const Color(0xff719AC3);
                                  registerationTwo.color1.value =
                                      const Color.fromRGBO(113, 154, 195, 0.16);
                                  registerationTwo.color2.value =
                                      const Color.fromRGBO(113, 154, 195, 0.16);
                                  registerationTwo.fishingType = 'both';
                                  registerationTwo.width3.value = 2.0;
                                  registerationTwo.width1.value = 1.0;
                                  registerationTwo.width2.value = 1.0;
                                },
                                child: SmallContainer(
                                  text: 'Both',
                                  color: registerationTwo.color3.value,
                                  width: registerationTwo.width3.value,
                                ),
                              ))
                        ]),
                    SizedBox(height: 26.h),
                    LabelText(text: 'Shirt Size'),
                    SizedBox(height: 13.h),
                    Container(
                      padding: EdgeInsets.only(left: 20.w),
                      height: 52.h,
                      width: 356.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                // ignore: use_full_hex_values_for_flutter_colors
                                color: Color.fromRGBO(113, 154, 195, 0.16),
                                blurRadius: 0,
                                offset: Offset(0, 4))
                          ],
                          border: Border.all(
                              width: 1,
                              color: const Color.fromRGBO(113, 154, 195, 0.16)),
                          borderRadius: BorderRadius.circular(5)),
                      child: DropdownButton<String>(
                        iconSize: 0.0,
                        value: _chosenValue,
                        items: <String>['S', 'M', 'L', 'XL', 'XXL', 'XXXL']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        hint: Text(
                          'Select',
                          style: Theme.of(context)
                              .textTheme
                              .headline2!
                              .copyWith(
                                  fontSize: 15.sp,
                                  color: const Color(0xff48505899)
                                  // greyFontColoR.withAlpha(99),
                                  ),
                        ),
                        icon: const Icon(Icons.keyboard_arrow_down,
                            // ignore: use_full_hex_values_for_flutter_colors
                            color: Color(0xff48505899)
                            // color: greyFontColoR.withAlpha(99),
                            ),
                        underline: Container(),
                        onChanged: (String? value) {
                          setState(() {
                            _chosenValue = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 13.h),
                    SizedBox(height: 20.h),
                    LabelText(text: 'Veteran'),
                    SizedBox(height: 13.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(() => GestureDetector(
                            onTap: () {
                              registerationTwo.color4.value =
                                  const Color(0xff719AC3);
                              // ignore: use_full_hex_values_for_flutter_colors
                              registerationTwo.color5.value =
                                  const Color(0xf2b67a329);
                              registerationTwo.width4.value = 2.0;
                              registerationTwo.width5.value = 1.0;
                              registerationTwo.vetran = '1';
                            },
                            child: BigContainer(
                              text: 'Yes',
                              color: registerationTwo.color4.value,
                              width: registerationTwo.width4.value,
                            ))),
                        // ignore: use_full_hex_values_for_flutter_colors
                        Obx(() => GestureDetector(
                              onTap: () {
                                registerationTwo.color5.value =
                                    registerationTwo.blueColor.value;
                                // ignore: use_full_hex_values_for_flutter_colors
                                registerationTwo.color4.value =
                                    const Color(0xf2b67a329);
                                registerationTwo.width5.value = 2.0;
                                registerationTwo.width4.value = 1.0;
                                registerationTwo.vetran = '0';
                              },
                              child: BigContainer(
                                text: 'No',
                                color: registerationTwo.color5.value,
                                width: registerationTwo.width5.value,
                              ),
                            ))
                      ],
                    ),
                    SizedBox(height: 20.h),
                    LabelText(text: 'Club'),
                    SizedBox(height: 13.h),
                    TextF(
                        readOnly: false,
                        textEditingController: clubController,
                        onchanged: (value) {},
                        hintText: 'Select',
                        textInputType: TextInputType.text,
                        prefix: null),
                    SizedBox(height: 46.h),
                    MyButton(
                        onpressed: () async {
                          await registerationTwo1
                              .registersteptwo(
                                  registerationTwo.fishingType,
                                  _chosenValue.toString(),
                                  registerationTwo.vetran,
                                  clubController.text)
                              .then((value) {});
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      BottomNavigation(currentIndex: 2)),
                              (route) => false);
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
