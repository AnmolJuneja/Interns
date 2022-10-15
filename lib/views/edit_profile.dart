// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reelpro/consts/appbar.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/consts/text_field.dart';
import 'package:reelpro/models/edit_profile.dart';
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/view_models/edit_profile.dart';
import 'package:reelpro/view_models/registeration_step_two.dart';
import 'package:reelpro/view_models/validator.dart';
import 'package:reelpro/views/manage_team_screen.dart';
import 'package:reelpro/views/user_profile.dart';

class EditProfile1 extends StatefulWidget {
  EditProfile1({
    Key? key,
  }) : super(key: key);

  @override
  State<EditProfile1> createState() => _EditProfile1State();
}

class _EditProfile1State extends State<EditProfile1> {
  TextEditingController descriptionController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController dobController = TextEditingController();

  TextEditingController numberController = TextEditingController();

  // ..text = 'male';
  final instanceStepTwo = Get.put(RegistrationStepTwo2());
  final editprofile = Get.put(Editprofile());
  File? file;
  ImagePicker picker = ImagePicker();
  @override
  void initState() {
    firstNameController.text = instanceStepTwo.firstName1.value;
    lastNameController.text = instanceStepTwo.lastName1.value;
    emailController.text = instanceStepTwo.email1.value;
    dobController.text = instanceStepTwo.dob1.value;
    numberController.text = instanceStepTwo.number.value;
    super.initState();
  }

  final validateEmail = Get.put(ValidateEmail());
  String? _chosenValue;

  @override
  Widget build(BuildContext context) {
    _chosenValue = instanceStepTwo.gender1.value;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 60.h,
          backgroundColor: const Color(0xffF2F9FF),
          flexibleSpace: Container(
              padding: EdgeInsets.only(top: 60.h, left: 36.w),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.arrow_back_ios),
                  SizedBox(
                    width: 105.w,
                  ),
                  Center(
                    child: Text21PtBlack(text: 'Edit Profile'),
                  )
                ],
              )),
        ),
        backgroundColor: const Color(0xffF2F9FF),
        body: Container(
          height: 775.h,
          padding: EdgeInsets.only(left: 36.w, right: 36.w),
          child: SingleChildScrollView(
              child: Column(children: [
            SizedBox(height: 44.h),
            GestureDetector(
                onTap: () async {
                  XFile? xFile =
                      await picker.pickImage(source: ImageSource.gallery);
                  if (xFile != null) {
                    setState(() {
                      file = File(xFile.path);
                    });
                  }
                },
                child: Container(
                    child: file == null
                        ? Image(
                            image:
                                const AssetImage('assets/images/profile.png'),
                            height: 132.h,
                            width: 132.w)
                        : Container(
                            height: 132.h,
                            width: 132.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border:
                                    Border.all(color: Colors.white, width: 3)),
                            child: Image.file(file!)))),
            SizedBox(height: 9.h),
            Center(
                child: Text('Change',
                    style: TextStyle(
                        fontFamily: 'Helvetica',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff2B67A3)))),
            SizedBox(height: 34.h),
            // ignore: use_full_hex_values_for_flutter_colors
            BigTextField(
                textEditingController: descriptionController,
                onchanged: (value) {},
                hintText: 'Add something about you',
                textInputType: TextInputType.text),
            SizedBox(height: 8.h),
            // ignore: use_full_hex_values_for_flutter_colors
            TextF(
                textEditingController: firstNameController,
                onchanged: (value) {},
                hintText: 'First name',
                textInputType: TextInputType.text,
                prefix: null),
            SizedBox(height: 8.h),
            TextF(
                textEditingController: lastNameController,
                onchanged: (value) {},
                hintText: 'Last name',
                textInputType: TextInputType.text,
                prefix: null),
            SizedBox(height: 8.h),
            TextFEmail(
                textEditingController: emailController,
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
                }),
            SizedBox(height: 8.h),
            TextF(
                textEditingController: numberController,
                onchanged: (value) {},
                hintText: 'Phone number',
                textInputType: TextInputType.number,
                prefix: null),
            SizedBox(height: 8.h),
            TextFieldDatePicker(
              onSaved: (value) {},
              hintText: 'Date of Birth',
              textInputType: TextInputType.datetime,
              prefix: null,
              onchanged: (value) {},
              textEditingController: dobController,
            ),
            SizedBox(height: 8.h),
            Container(
              padding: EdgeInsets.only(left: 20.w),
              height: 52.h,
              width: 356.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border:
                      Border.all(color: Color.fromRGBO(113, 154, 195, 0.16)),
                  boxShadow: const [
                    BoxShadow(
                        // ignore: use_full_hex_values_for_flutter_colors
                        color: Color.fromRGBO(113, 154, 195, 0.16),
                        blurRadius: 0,
                        offset: Offset(0, 4))
                  ],
                  borderRadius: BorderRadius.circular(5)),
              child: DropdownButton<String>(
                iconSize: 0.0,
                value: _chosenValue,
                items: <String>['Male', 'Female', 'Transgender']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                hint: Text(
                  'Gender',
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontSize: 15.sp, color: Color(0xff48505899)
                          // greyFontColoR.withAlpha(99),
                          ),
                ),
                icon: const Icon(Icons.keyboard_arrow_down,
                    color: Color(0xff48505899)
                    // color: greyFontColoR.withAlpha(99),
                    ),
                underline: Container(),
                onChanged: (String? value) {
                  setState(() {
                    instanceStepTwo.gender1.value = value!;
                  });
                },
              ),
            ),
            SizedBox(height: 44.h),
            MyButton(
                onpressed: () async {
                  await editprofile
                      .editProfile(
                          firstNameController.text,
                          lastNameController.text,
                          dobController.text,
                          _chosenValue!,
                          descriptionController.text,
                          file!,
                          emailController.text,
                          numberController.text,
                          'card_ashdjahsd132231',
                          'cust_1318eejndjakn',
                          'Asia/Kolkata')
                      .then((value) async {
                    var res = EditProfile.fromJson(value.data);
                  });
                  Get.to(const UserProfileUI());
                },
                buttonText: 'Submit')
          ])),
        ));
  }
}
