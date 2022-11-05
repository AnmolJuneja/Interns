import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/container.dart';
import 'package:reelpro/consts/text.dart';
import 'package:get/get.dart';
import 'package:reelpro/consts/text_field.dart';

class CrewAndContactsUI extends StatefulWidget {
  const CrewAndContactsUI({Key? key}) : super(key: key);

  @override
  State<CrewAndContactsUI> createState() => _CrewAndContactsUIState();
}

class _CrewAndContactsUIState extends State<CrewAndContactsUI> {
  TextEditingController textEditingController = TextEditingController();
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  @override
  void initState() {
    textEditingController.text = 'Robert Smith';
    textEditingController1.text = 'Tuff Man Series';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F9FF),
      appBar: AppBar(
        toolbarHeight: 70.h,
        centerTitle: true,
        title: Padding(
            padding: EdgeInsets.only(top: 42.h),
            child: Text21PtBlack(text: 'Crew & Contact')),
        elevation: 0,
        backgroundColor: const Color(0xffF2F9FF),
        leading: Padding(
            padding: EdgeInsets.only(top: 42.h, left: 36.w),
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios, color: Colors.black))),
      ),
      body: Padding(
          padding: EdgeInsets.only(top: 44.h, left: 36.w, right: 36.w),
          child: Column(
            children: [
              const SponserContainer(),
              SizedBox(height: 32.h),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Image.asset('assets/images/for designer.png',
                    height: 64.h, width: 64.w),
                Image.asset('assets/images/for designer.png',
                    height: 64.h, width: 64.w),
                Image.asset('assets/images/for designer.png',
                    height: 64.h, width: 64.w),
                Image.asset('assets/images/for designer.png',
                    height: 64.h, width: 64.w)
              ]),
              SizedBox(height: 7.h),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text16PtBlack(text: 'Director'),
                Text16PtBlack(text: 'Manager'),
                Text16PtBlack(text: 'Manager'),
                Text16PtBlack(text: 'Manager'),
              ]),
              SizedBox(height: 30.h),
              const Divider(thickness: 1),
              SizedBox(height: 30.h),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text14Pt(text: 'Director:'),
                SizedBox(width: 20.w),
                const Text('Anthony Blomberg'),
              ]),
              SizedBox(height: 15.h),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text14Pt(text: 'Phone:'),
                SizedBox(width: 20.w),
                const Text('   908 111 1111'),
              ]),
              SizedBox(height: 15.h),
              Container(
                margin: EdgeInsets.only(right: 120.w),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text14Pt(text: 'Email:'),
                      const Text('Tournament@gmail.com'),
                    ]),
              ),
              SizedBox(height: 15.h),
              Container(
                margin: EdgeInsets.only(right: 100.w),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text14Pt(text: 'Website:'),
                  SizedBox(width: 20.w),
                  const Text('www.tournament2022.com'),
                ]),
              ),
              SizedBox(height: 80.h),
              MyButton(
                  onpressed: () {
                    Get.bottomSheet(
                        Container(
                          padding: EdgeInsets.only(
                              top: 48.h, left: 36.w, right: 36.w),
                          height: 800.h,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25)),
                              color: Color(0xffF2F9FF)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text15PtBlue(text: 'Send Message'),
                                SizedBox(height: 36.w),
                                Text14PtBlue(text: 'From'),
                                SizedBox(height: 9.h),
                                TextF(
                                    readOnly: false,
                                    textEditingController:
                                        textEditingController,
                                    hintText: 'From',
                                    textInputType: TextInputType.text,
                                    prefix: null,
                                    onchanged: (value) {}),
                                SizedBox(height: 24.h),
                                Text14PtBlue(text: 'Tournament Event'),
                                SizedBox(height: 9.h),
                                TextF(
                                    readOnly: false,
                                    textEditingController:
                                        textEditingController1,
                                    hintText: 'Tournament Event',
                                    textInputType: TextInputType.text,
                                    prefix: null,
                                    onchanged: (value) {}),
                                SizedBox(height: 25.h),
                                Text14PtBlue(text: 'Message'),
                                SizedBox(height: 9.h),
                                BigTextField(
                                    textEditingController:
                                        textEditingController2,
                                    hintText: 'Write your message here',
                                    textInputType: TextInputType.text,
                                    onchanged: (value) {}),
                                SizedBox(height: 221.h),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Button56(
                                          onpressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          buttonText: 'Cancel',
                                          textColor: Colors.black,
                                          width: 1,
                                          widthColor: Colors.black,
                                          color: const Color(0xffF2F9FF)),
                                      Button56Blue(
                                          onpressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          buttonText: 'Send',
                                          textColor: const Color(0xffF2F9FF),
                                          color: const Color(0xff2B67A3))
                                    ])
                              ]),
                        ),
                        isScrollControlled: true);
                  },
                  buttonText: 'Send a Message')
            ],
          )),
    );
  }
}
