// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
// / ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/big_text.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/small_text.dart';
import 'package:reelpro/consts/text_fieldc.dart';
import 'package:reelpro/consts/upper_design.dart';
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/controllers/fetch_lat_lng.dart';
// import 'package:reelpro/view_models/register_user_request/registeration.dart';
import 'package:reelpro/views/registeration_screens/registeration_step_two.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class UserAddressScreen extends StatefulWidget {
  const UserAddressScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<UserAddressScreen> createState() => _UserAddressScreenState();
}

class _UserAddressScreenState extends State<UserAddressScreen> {
  TextEditingController addressController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController stateController = TextEditingController();

  final fetch = Get.put(FetchLatLng());
  @override
  void initState() {
    super.initState();
    saveData();
  }

  saveData() async {
    String city = await SaveCity().getcity();
    cityController.text = city;
    String country = await SaveCountry().getCountry();
    countryController.text = country;
    String state = await SaveState().getState();
    stateController.text = state;
    String locality = await SaveLocality().getLocality();
    addressController.text = locality;
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
                            "This will be helpful to suggest upcoming events.",
                        color: Color(0xff485058)),
                    SizedBox(height: 40.h),
                    TextFEmail(
                      textEditingController: addressController,
                      hintText: 'Address',
                      textInputType: TextInputType.name,
                      prefix: null,
                      onSaved: (value) {},
                      onchanged: (value) {},
                      keyValue: null,
                      validator: (value) {},
                      suffixText: null,
                    ),
                    SizedBox(height: 8.h),
                    TextFEmail(
                      onSaved: (value) {},
                      textEditingController: cityController,
                      hintText: 'City',
                      textInputType: TextInputType.name,
                      prefix: null,
                      onchanged: (value) {},
                      keyValue: null,
                      validator: (value) {},
                      suffixText: null,
                    ),
                    SizedBox(height: 8.h),
                    TextFEmail(
                        textEditingController: stateController,
                        hintText: 'State',
                        textInputType: TextInputType.name,
                        prefix: null,
                        onSaved: (value) {},
                        onchanged: (value) {},
                        keyValue: null,
                        suffixText: null,
                        validator: (value) {}),
                    SizedBox(height: 8.h),
                    TextFEmail(
                        textEditingController: countryController,
                        hintText: 'Country',
                        textInputType: TextInputType.name,
                        prefix: null,
                        onSaved: (value) {},
                        onchanged: (value) {},
                        keyValue: null,
                        suffixText: null,
                        validator: (value) {}),
                    SizedBox(height: 8.h),
                    SizedBox(height: 211.h),
                    MyButton(
                        onpressed: () async {
                          if (countryController.text.isNotEmpty &&
                              cityController.text.isNotEmpty &&
                              stateController.text.isNotEmpty &&
                              addressController.text.isNotEmpty) {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Registeration2()),
                                (route) => false);
                          } else {
                            Get.snackbar(
                                'error', 'Please enter all fields to continue.',
                                snackPosition: SnackPosition.BOTTOM,
                                margin: EdgeInsets.only(bottom: 20.h));
                          }
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
}
