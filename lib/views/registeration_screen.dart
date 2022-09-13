// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
// / ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/big_text.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/small_text.dart';
import 'package:get/get.dart';
import 'package:reelpro/consts/text_field.dart';
import 'package:reelpro/consts/upper_design.dart';
import 'package:reelpro/models/registeration.dart';
import 'package:reelpro/models/shared_preferences.dart';
// import 'package:reelpro/view_model/auth_token.dart';
import 'package:reelpro/view_models/registeration.dart';
import 'package:reelpro/views/edit_profile.dart';
import 'package:reelpro/views/registeration_step_two.dart';

// ignore: must_be_immutable
class RegisterationScreen extends StatefulWidget {
  String authToken;

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

  TextEditingController textEditingController3 = TextEditingController();

  TextEditingController textEditingController4 = TextEditingController();

  TextEditingController textEditingController5 = TextEditingController();

  // String authToken =
  //     'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvcmVlbHByby55YXRpbGFicy5jb21cL2FwaVwvbG9naW4tc3RlcC10d28iLCJpYXQiOjE2NjIxMDExODgsImV4cCI6MTY2MjEzNzE4OCwibmJmIjoxNjYyMTAxMTg4LCJqdGkiOiJIYXBWcnR5bGE4ekhRUDdxIiwic3ViIjozNzcsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.Fo6VjW2LVR9fKNzhGrhYmzGm1wpOU20WjH9AtS9ci3M';

  final register = Get.put(RegisterationViewModel());

  final double lat = 30.403648;

  final double lng = 74.027962;

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
        const  Upper(),
          Positioned(
              top: 140.h,
              left: 36.w,
              right: 36.w,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                        color: const Color(0xff2B67A3), text: 'Registeration'),
                    SmallText(
                        text:
                            "Tell us a little bit about yourself so we know it's you",
                        color: const Color(0xff485058)),
                    SizedBox(height: 40.h),
                   TextF(textEditingController: textEditingController1,
                    hintText: 'Firstname',
                     textInputType: TextInputType.text, prefix: null),
                    SizedBox(height: 8.h),
                   TextF(textEditingController: textEditingController2,
                    hintText: 'Last name', textInputType: TextInputType.text,
                     prefix: null),
                    SizedBox(height: 8.h),
                   TextF(textEditingController: textEditingController3,
                    hintText: 'Email',
                     textInputType: TextInputType.text,
                      prefix: null),
                    SizedBox(height: 8.h),
                  TextF(textEditingController: textEditingController4,
                   hintText: 'Date of Birth',
                    textInputType: TextInputType.text,
                     prefix: null),
                    SizedBox(height: 8.h),
                   TextF(textEditingController: textEditingController5,
                    hintText: 'Gender',
                     textInputType: TextInputType.text,
                      prefix: null),
                    SizedBox(height: 156.h),
                   MyButton(onpressed: ()async{
                          await register
                            .registerUser(
                                textEditingController4.text,
                                textEditingController3.text,
                                textEditingController5.text,
                                textEditingController1.text,
                                textEditingController2.text,
                                lat,
                                lng,
                                widget.authToken)
                            .then((value) {
                              var res = Registration.fromJson(value.data);
                              //  Get.to( EditProfile1(firstname:res.data!.firstname.toString() , 
                              //  lastname: res.data!.lastname.toString(),
                              //   email: res.data!.email.toString(), number:res.data!.email.toString(),
                              //    dob: res.data!.dob.toString(), gender: res.data!.gender.toString()));
                        });
                       
                      }, buttonText: 'Continue')
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
