import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/consts/text_field.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reelpro/consts/toggle_container.dart';
import 'package:reelpro/view_models/add_feed.dart';
import 'package:reelpro/view_models/fetch_lat_lng.dart';
import 'package:reelpro/views/bottom_navigation.dart';
import 'dart:io';

import 'package:reelpro/views/tracker.dart';

class AddFeedConst extends StatefulWidget {
  const AddFeedConst({
    Key? key,
  }) : super(key: key);

  @override
  State<AddFeedConst> createState() => _AddFeedConstState();
}

class _AddFeedConstState extends State<AddFeedConst> {
  ImagePicker picker = ImagePicker();
  File? file;
  TextEditingController textEditingController = TextEditingController();
  var location = true.obs;
  var height = 175.obs;
  var width = 375.obs;
  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingControllerSearch = TextEditingController();
    final fetchAdress = Get.put(FetchLatLng());
    final addFeedApi = Get.put(AddFeedApi());
    int? viewStatus;
    return Scaffold(
      backgroundColor: const Color(0xffF2F9FF),
      body: Padding(
        padding: EdgeInsets.only(top: 71.h, left: 36.w, right: 36.w),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text21PtBlack(text: 'Add Feed'),
              GestureDetector(
                  onTap: () {
                    Get.to(() => BottomNavigation(currentIndex: 0));
                  },
                  child: const Icon(Icons.close))
            ]),
            SizedBox(height: 40.h),
            BigTextFieldAddFeed(
                textEditingController: textEditingController,
                hintText: 'Whats on your mind',
                textInputType: TextInputType.multiline,
                onchanged: null),
            SizedBox(height: 40.h),
            Row(children: [
              Image.asset('assets/images/Icon-Outline-image.png'),
              SizedBox(width: 35.w),
              GestureDetector(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                    Get.bottomSheet(Container(
                      height: 200.h,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Color(0xffF2F9FF)),
                      child: Padding(
                        padding:
                            EdgeInsets.only(top: 35.h, left: 36.w, right: 36.w),
                        child: Column(
                          children: [
                            MyButton(
                                onpressed: () {
                                  openCamera();
                                  Navigator.pop(context);
                                },
                                buttonText: 'Camera'),
                            SizedBox(height: 10.h),
                            MyButton(
                                onpressed: () {
                                  openGallery();
                                  Navigator.pop(context);
                                },
                                buttonText: 'Gallery')
                          ],
                        ),
                      ),
                    ));
                  },
                  child: Text16AddFeed(text: 'Add photos'))
            ]),
            SizedBox(height: 20.h),
            Container(
                padding: EdgeInsets.only(left: 54.w),
                child: file == null
                    ? const Text('')
                    : GestureDetector(
                        onDoubleTap: () {
                          height.value = 175.h.toInt();
                        },
                        onTap: () {
                          height.value = 350.h.toInt();
                          width.value = 428.w.toInt();
                        },
                        child: Obx(() => Container(
                              height: height.value.toDouble(),
                              width: width.value.toDouble(),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: FileImage(file!)),
                                  borderRadius: BorderRadius.circular(10)),
                            )),
                      )),
            file == null
                ? SizedBox(
                    height: 0.h,
                  )
                : SizedBox(
                    height: 40.h,
                  ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Image.asset('assets/images/Group 89.png'),
              SizedBox(width: 36.w),
              GestureDetector(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                    location.value = false;
                  },
                  child: Obx(() => location.value
                      ? Text16AddFeed(text: 'location')
                      : Text16PtBlack(text: fetchAdress.address.value))),
            ]),
            SizedBox(height: 40.h),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Image.asset('assets/images/Group 90.png'),
              SizedBox(width: 34.w),
              GestureDetector(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                    Get.bottomSheet(
                      Container(
                        height: 428.h,
                        width: 428.w,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(25)),
                            color: Color(0xffF2F9FF)),
                        child: Padding(
                          padding: EdgeInsets.only(top: 48.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 36.w),
                                    child:
                                        Text15PtBlue(text: 'Post Visibility')),
                                SizedBox(height: 35.h),
                                Obx(() => GestureDetector(
                                    onTap: () {
                                      FocusScope.of(context).unfocus();
                                      addFeedApi.color1.value =
                                          addFeedApi.selectedColor.value;
                                      addFeedApi.color2.value =
                                          const Color(0xffF2F9FF);
                                      addFeedApi.color3.value =
                                          const Color(0xffF2F9FF);
                                      addFeedApi.isSelected1.value = true;
                                      addFeedApi.isSelected2.value = false;
                                      addFeedApi.isSelected3.value = false;
                                      addFeedApi.selectedItem.value = 'Public';
                                      setState(() {
                                        viewStatus = 1;
                                      });
                                    },
                                    child: ToggleContainer(
                                      color: addFeedApi.color1.value,
                                      isSelected: addFeedApi.isSelected1.value,
                                      text: 'Public',
                                    ))),
                                // SizedBox(height: 42.h),
                                Obx(
                                  () => GestureDetector(
                                      onTap: () {
                                        FocusScope.of(context).unfocus();
                                        addFeedApi.color2.value =
                                            addFeedApi.selectedColor.value;
                                        addFeedApi.color1.value =
                                            const Color(0xffF2F9FF);
                                        addFeedApi.color3.value =
                                            const Color(0xffF2F9FF);
                                        addFeedApi.isSelected2.value = true;
                                        addFeedApi.isSelected1.value = false;
                                        addFeedApi.isSelected3.value = false;
                                        addFeedApi.selectedItem.value =
                                            'Followers';
                                        setState(() {
                                          viewStatus = 2;
                                        });
                                      },
                                      child: ToggleContainer(
                                        color: addFeedApi.color2.value,
                                        isSelected:
                                            addFeedApi.isSelected2.value,
                                        text: 'Followers',
                                      )),
                                ),
                                // SizedBox(height: 42.h),
                                Obx(
                                  () => GestureDetector(
                                      onTap: () {
                                        FocusScope.of(context).unfocus();
                                        addFeedApi.color3.value =
                                            addFeedApi.selectedColor.value;
                                        addFeedApi.color2.value =
                                            const Color(0xffF2F9FF);
                                        addFeedApi.color1.value =
                                            const Color(0xffF2F9FF);
                                        addFeedApi.isSelected3.value = true;
                                        addFeedApi.isSelected2.value = false;
                                        addFeedApi.isSelected1.value = false;
                                        addFeedApi.selectedItem.value =
                                            'Private';
                                        setState(() {
                                          viewStatus = 3;
                                        });
                                      },
                                      child: ToggleContainer(
                                        color: addFeedApi.color3.value,
                                        isSelected:
                                            addFeedApi.isSelected3.value,
                                        text: 'Private',
                                      )),
                                ),
                                SizedBox(height: 38.h),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 36.w, right: 36.w),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Button56(
                                            onpressed: () {
                                              Navigator.pop(context);
                                              addFeedApi.color1.value =
                                                  addFeedApi.spareColor.value;
                                              addFeedApi.color2.value =
                                                  addFeedApi.spareColor.value;
                                              addFeedApi.color3.value =
                                                  addFeedApi.spareColor.value;
                                              addFeedApi.isSelected1.value =
                                                  false;
                                              addFeedApi.isSelected2.value =
                                                  false;
                                              addFeedApi.isSelected3.value =
                                                  false;
                                              addFeedApi.selectedItem.value =
                                                  '';
                                            },
                                            buttonText: 'Cancel',
                                            textColor: const Color(0xff485058),
                                            width: 1,
                                            widthColor: const Color(0xff485058),
                                            color: const Color(0xffF2F9FF)),
                                        Button56Blue(
                                            onpressed: () {
                                              Navigator.pop(context);
                                            },
                                            buttonText: 'Done',
                                            textColor: const Color(0xffF2F9FF),
                                            color: const Color(0xff2B67A3))
                                      ]),
                                )
                              ]),
                        ),
                      ),
                    );
                  },
                  child: Obx(() => addFeedApi.selectedItem.value.isEmpty
                      ? Text16AddFeed(text: 'Public/Followers/Private')
                      : Text16PtBlack(text: addFeedApi.selectedItem.value)))
            ]),
            file == null
                ? SizedBox(
                    height: 367.h,
                  )
                : SizedBox(height: 170.h),
            MyButtonGrey(
                onpressed: () async {
                  await addFeedApi.addFeed('location', 34.7, 37.4,
                      textEditingController.text, 1, file!);
                  Get.to(() => BottomNavigation(currentIndex: 0));
                },
                buttonText: 'Post')
          ]),
        ),
      ),
    );
  }

  openCamera() async {
    XFile? xFile = await picker.pickImage(source: ImageSource.camera);
    if (xFile != null) {
      setState(() {
        file = File(xFile.path);
      });
    }
  }

  openGallery() async {
    XFile? xFile = await picker.pickImage(source: ImageSource.gallery);
    if (xFile != null) {
      setState(() {
        file = File(xFile.path);
      });
    }
  }
}
