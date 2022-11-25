import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reelpro/consts/appbar.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/consts/text_field.dart';
import 'package:reelpro/consts/text_fieldc.dart';
import 'package:reelpro/controllers/registeration_controllers.dart';
import 'package:reelpro/models/edit_profile.dart';
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/view_models/register_user_request/edit_profile.dart';
import 'package:reelpro/view_models/register_user_request/otp_view_model.dart';
import 'package:reelpro/controllers/validate_email_controller.dart';
import 'package:reelpro/view_models/team_and_profile_request/other_user_profile.dart';
import 'package:reelpro/views/team_screens/manage_team_screen.dart';
import 'package:reelpro/views/family_and_profile_screens/user_profile.dart';
import 'package:image_cropper/image_cropper.dart';

class EditProfile1 extends StatefulWidget {
  final String desc;
  const EditProfile1({Key? key, required this.desc}) : super(key: key);

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
  // final editprofile = Get.put(Editprofile());
  File? file;
  ImagePicker picker = ImagePicker();
  final validateEmail = Get.put(ValidateEmail());
  final instanceOtpViewModel = Get.put(OtpViewModel());
  final ff = Get.put(OtherUserProfileApi());
  String? _chosenValue;
  @override
  void initState() {
    firstNameController.text = instanceStepTwo.firstName1.value;
    lastNameController.text = instanceStepTwo.lastName1.value;
    emailController.text = instanceStepTwo.email1.value;
    dobController.text = instanceStepTwo.dob1.value;
    numberController.text = instanceStepTwo.number.value;
    _chosenValue = instanceStepTwo.gender1.value;
    descriptionController.text = widget.desc;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _chosenValue = instanceStepTwo.gender1.value;
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            // toolbarHeight: 70.h,
            centerTitle: true,
            backgroundColor: const Color(0xffF2F9FF),
            leading: Padding(
                padding: EdgeInsets.only(left: 36.w),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child:
                        const Icon(Icons.arrow_back_ios, color: Colors.black))),
            title: Text21PtBlack(text: 'Edit Profile')),
        backgroundColor: const Color(0xffF2F9FF),
        body: Container(
          height: 755.h,
          padding: EdgeInsets.only(left: 36.w, right: 36.w),
          child: SingleChildScrollView(
              child: Column(children: [
            SizedBox(height: 24.h),
            GestureDetector(
                onTap: () async {
                  try {
                    final images = await ImagePicker()
                        .pickImage(source: ImageSource.gallery);
                    if (images == null) return;
                    File? tempPath = File(images.path);
                    tempPath = await cropImage(imageFile: tempPath);
                    setState(() {
                      file = tempPath;
                    });
                  } on PlatformException catch (e) {
                    print(e);
                    Navigator.of(context).pop();
                  }
                },
                child: file == null
                    ? Container(
                        height: 132.h,
                        width: 132.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(width: 3, color: Colors.white),
                            image: instanceStepTwo.profilePic1.value == ''
                                ? const DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/images/profile.png'))
                                : DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        instanceStepTwo.profilePic1.value))),
                      )
                    : Container(
                        height: 132.h,
                        width: 132.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover, image: FileImage(file!)),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.white, width: 3)),
                      )),
            SizedBox(height: 9.h),
            Center(
                child: Text('Upload Profile Picture',
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
                readOnly: false,
                textEditingController: firstNameController,
                onchanged: (value) {},
                hintText: 'First name',
                textInputType: TextInputType.text,
                prefix: null),
            SizedBox(height: 8.h),
            TextF(
                readOnly: false,
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
              },
              suffixText: 'Verify',
              suffix: null,
            ),
            SizedBox(height: 8.h),
            TextF10(
                textEditingController: numberController,
                hintText: 'Phone number',
                textInputType: TextInputType.number,
                onSaved: (value) {},
                keyValue: null,
                validator: (value) {
                  return null;
                },
                onchanged: (value) {}),
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
                  border: Border.all(
                      color: const Color.fromRGBO(113, 154, 195, 0.16)),
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
                value: instanceStepTwo.gender1.value,
                items: <String>['Male', 'Female', 'Transgender']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                hint: Text('Gender',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontSize: 15.sp, color: const Color(0xff48505899))),
                icon: const Icon(Icons.keyboard_arrow_down,
                    color: Color(0xff48505899)),
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
                onpressed: () {
                  if (!numberController.text.isPhoneNumber) {
                    Get.snackbar('error', 'Please enter a valid phone number',
                        snackPosition: SnackPosition.BOTTOM);
                  } else if (!emailController.text.isEmail) {
                    Get.snackbar('error', 'Please enter a valid Email',
                        snackPosition: SnackPosition.BOTTOM);
                  } else {
                    login();
                  }
                },
                buttonText: 'Update')
          ])),
        ));
  }

  login() async {
    await SaveFirstName().saveFirstName(firstNameController.text);
    await SaveLastName().saveLastName(lastNameController.text);
    instanceStepTwo.firstName1.value = firstNameController.text;
    instanceStepTwo.lastName1.value = lastNameController.text;
    await Gender().saveGender(_chosenValue!);
    instanceStepTwo.genderF.value = _chosenValue!;
    SaveDescription().saveDescription(descriptionController.text);
    instanceStepTwo.description.value = descriptionController.text;
    if (numberController.text != instanceStepTwo.number.value) {
      await SaveNumber().saveNumber(numberController.text);
      instanceStepTwo.number.value = numberController.text;
    }
    if (emailController.text != instanceStepTwo.email1.value) {
      SaveEmail().saveEmail(emailController.text);
      instanceStepTwo.email1.value = emailController.text;
    }
    await Dob().saveDob(dobController.text);
    instanceStepTwo.dob1.value = dobController.text;
    await Editprofile()
        .editProfile(
            firstNameController.text,
            lastNameController.text,
            dobController.text,
            _chosenValue!,
            descriptionController.text,
            file,
            emailController.text,
            numberController.text,
            'card_ashdjahsd132231',
            'cust_1318eejndjakn',
            'Asia/Kolkata')
        .then((value) {
      var res = EditProfile.fromJson(value.data);
      SaveProfilePic().saveProfilePic(res.data!.profilePic!);
      instanceStepTwo.profilePic1.value = res.data!.profilePic;
      SaveCountryCode().saveCountryCode(instanceStepTwo.countryText.value);
      SaveFlah().saveFlag(instanceStepTwo.flagEmoji.value);
    });
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const UserProfileUI()),
        (route) => false);
  }

  Future<File?> cropImage({required File imageFile}) async {
    CroppedFile? cropImage = await ImageCropper().cropImage(
        maxHeight: 180,
        maxWidth: 180,
        compressQuality: 100,
        aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
        sourcePath: imageFile.path);
    if (cropImage == null) return null;
    return File(cropImage.path);
  }
}
