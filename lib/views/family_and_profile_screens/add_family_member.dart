import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/consts/text_field.dart';
import 'package:reelpro/controllers/registeration_controllers.dart';
import 'package:reelpro/controllers/fetch_lat_lng.dart';
// import 'package:reelpro/view_models/register_user_request/registeration_step_two.dart';
// import 'package:reelpro/view_models/team_and_profile_request/team_list.dart';

class AddFamilyMemberUI extends StatefulWidget {
  const AddFamilyMemberUI({
    Key? key,
  }) : super(key: key);

  @override
  State<AddFamilyMemberUI> createState() => _AddFamilyMemberUIState();
}

class _AddFamilyMemberUIState extends State<AddFamilyMemberUI> {
  TextEditingController lastnameController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController password1Controller = TextEditingController();

  final instanceRegisterationStepTwo = Get.put(RegistrationStepTwo2());
  File? file;
  // ImagePicker picker = ImagePicker();
  final double lat = 30.403648;
  final double lng = 74.027962;
  final visibility = 'Public'.obs;
  final fetchAdress = Get.put(FetchLatLng());
  @override
  void initState() {
    nameController.text = 'Robert';
    lastnameController.text = 'Smith';
    emailController.text = 'Robert_smith21';
    password1Controller.text = '***********';
    passwordController.text = '***********';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            // toolbarHeight: 70.h,
            backgroundColor: const Color(0xffF2F9FF),
            centerTitle: true,
            title: Text21PtBlack(text: 'Add Member'),
            leading: Padding(
                padding: EdgeInsets.only(left: 36.w),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ))),
        backgroundColor: const Color(0xffF2F9FF),
        body: Container(
            color: const Color(0xffF2F9FF),
            padding: EdgeInsets.only(left: 36.w, right: 36.w),
            child: SingleChildScrollView(
                child: Column(children: [
              SizedBox(height: 44.h),
              GestureDetector(
                  onTap: () async {
                    XFile? xFile =
                        await ImagePicker().pickImage(source: ImageSource.gallery);
                    if (xFile != null) {
                      setState(() {
                        file = File(xFile.path);
                      });
                    }
                  },
                  child: Container(
                      child: file == null
                          ? SizedBox(
                              height: 132.h,
                              width: 132.w,
                              child: const Image(
                                  image:
                                      AssetImage('assets/images/profile.png')),
                            )
                          : Container(
                              height: 132.h,
                              width: 132.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border:
                                      Border.all(color: Colors.white, width: 3),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: FileImage(file!))),
                            ))),

              SizedBox(height: 9.h),
              Center(
                  child: Text14PtBlue(
                text: 'Add',
              )),
              SizedBox(height: 34.h),
              TextF(
                  readOnly: false,
                  textEditingController: nameController,
                  onchanged: (value) {},
                  hintText: 'Firstname',
                  textInputType: TextInputType.text,
                  prefix: null),
              // ignore: use_full_hex_values_for_flutter_colors

              SizedBox(height: 8.h),
              TextF(
                  readOnly: false,
                  textEditingController: lastnameController,
                  hintText: 'lastname',
                  textInputType: TextInputType.text,
                  prefix: null,
                  onchanged: (value) {}),
              // ignore: use_full_hex_values_for_flutter_colors

              SizedBox(height: 8.h),
              TextF(
                  readOnly: false,
                  textEditingController: emailController,
                  hintText: 'Enter Email',
                  textInputType: TextInputType.text,
                  onchanged: (value) {},
                  prefix: null),
              SizedBox(height: 8.h),
              TextF(
                  readOnly: false,
                  textEditingController: passwordController,
                  hintText: 'Password',
                  textInputType: TextInputType.text,
                  onchanged: (value) {},
                  prefix: null),
              SizedBox(height: 8.h),
              TextF(
                  readOnly: false,
                  textEditingController: password1Controller,
                  hintText: 'Password',
                  textInputType: TextInputType.text,
                  onchanged: (value) {},
                  prefix: null),
              SizedBox(height: 177.h),
              Container(
                height: 56.h,
                width: 356.w,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(5)),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff2B67A3)),
                    onPressed: () async {},
                    child: Text(
                      'Save',
                      style: TextStyle(
                          fontFamily: 'Helvetica',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xffF2F9FF)),
                    )),
              )
            ]))));
  }
}
