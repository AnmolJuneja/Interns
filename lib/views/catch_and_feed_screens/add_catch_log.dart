import 'package:flutter/material.dart';
import 'package:reelpro/consts/appbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/container.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/consts/text_field.dart';
import 'package:reelpro/consts/toggle_container.dart';
import 'package:reelpro/controllers/feed_and_catch_controllers.dart';
import 'package:reelpro/models/catchlog_list_response.dart';
import 'package:reelpro/view_models/feed_and_catch_network_request/all_catchlog_request.dart';
// import 'package:reelpro/view_models/feed_and_catch_network_request/catchlog_list.dart';
import 'package:reelpro/controllers/fetch_lat_lng.dart';
// import 'package:reelpro/view_models/feed_and_catch_network_request/fish_species_list.dart';
import 'package:reelpro/views/bottom_navigation_screens/bottom_navigation.dart';
// import 'package:reelpro/views/bottom_navigation_screens/bottom_sheet.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:reelpro/views/bottom_navigation_screens/tracker.dart';

class AddCatchLogUI extends StatefulWidget {
  const AddCatchLogUI({Key? key}) : super(key: key);

  @override
  State<AddCatchLogUI> createState() => _AddCatchLogUIState();
}

class _AddCatchLogUIState extends State<AddCatchLogUI> {
  var catchlogList = <CatchlogList>[].obs;


  @override
  void initState() {
    locationController.text = fetchAdress.address.value;
    super.initState();
  }

  @override
  AddCatchlogApi addCatchlogApi = Get.put(AddCatchlogApi());
  ImagePicker picker = ImagePicker();
  File? file;
  final fishSpeciesListApi = Get.put(AddFeedApi1());
  TextEditingController weightController = TextEditingController();
  TextEditingController lengthController = TextEditingController();
  TextEditingController baitController = TextEditingController();
  TextEditingController commentController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  final fetchAdress = Get.put(FetchLatLng());
  @override
  Widget build(BuildContext context) {
    double lat = 30.403648;
    double lng = 74.027962;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.h,
        elevation: 0,
        title: Padding(
            padding: EdgeInsets.only(top: 42.h),
            child: Text21PtBlack(text: 'Add Catch Log')),
        backgroundColor: const Color(0xffF2F9FF),
        leading: Padding(
            padding: EdgeInsets.only(top: 42.h, left: 36.w),
            child: GestureDetector(
              onTap: () {
                Get.to(() => BottomNavigation(currentIndex: 0));
                fishSpeciesListApi.finalSelected.value = '';
                fishSpeciesListApi.selectedFish.value = '';
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Color(0xff2B67A3),
                size: 15.0,
              ),
            )),
      ),
      backgroundColor: const Color(0xffF2F9FF),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Flexible(
          child: Container(
            height: 710.h,
            padding: EdgeInsets.only(
              top: 24.h,
              left: 36.w,
              right: 36.w,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text15PtBlue(text: 'Click Pictures or Videos'),
                  SizedBox(height: 14.h),
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
                              ? Container(
                                  height: 132.h,
                                  width: 132.w,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/images/Group 208.png')),
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          color: Colors.white, width: 3)),
                                )
                              : Container(
                                  height: 132.h,
                                  width: 132.w,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: FileImage(file!)),
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          color: Colors.white, width: 3)),
                                ))),
                  SizedBox(height: 28.h),
                  Text15PtBlue(text: 'Select Fishtype'),
                  SizedBox(height: 14.h),
                  GestureDetector(
                      onTap: () {
                        // showModalBottomSheet(
                        //     context: context,
                        //     isScrollControlled: true,
                        //     shape: const RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.vertical(
                        //             top: Radius.circular(25))),
                        //     builder: (context) => const buildBottomSheet());
                      },
                      child: Obx(() => fishSpeciesListApi
                              .selectedFish.value.isEmpty
                          ? BottomSheetContainer(
                              widgetText: Text15PtGrey(text: 'Select Fishtype'))
                          : BottomSheetContainerUpdate(
                              widgetText: Text16PtBlack(
                                  text:
                                      fishSpeciesListApi.selectedFish.value)))),
                  SizedBox(height: 18.h),
                  Text15PtBlue(text: 'Connect with Challenge'),
                  SizedBox(height: 14.h),
                  GestureDetector(
                      onTap: () {
                        Get.bottomSheet(
                            isScrollControlled: true,
                            Container(
                                height: 489.h,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                    color: Color(0xffF2F9FF),
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(25))),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 48.h, left: 36.w),
                                          child: Text15PtBlue(
                                              text: 'Connect with Challenge')),
                                      SizedBox(height: 25.h),
                                      Obx(() => GestureDetector(
                                            onTap: () {
                                              fishSpeciesListApi.color1.value =
                                                  fishSpeciesListApi
                                                      .selectedColor.value;
                                              fishSpeciesListApi.color2.value =
                                                  fishSpeciesListApi
                                                      .spareColor.value;
                                              fishSpeciesListApi.color3.value =
                                                  fishSpeciesListApi
                                                      .spareColor.value;
                                              fishSpeciesListApi.color4.value =
                                                  fishSpeciesListApi
                                                      .spareColor.value;
                                              fishSpeciesListApi
                                                  .isSelected1.value = true;
                                              fishSpeciesListApi
                                                  .isSelected2.value = false;
                                              fishSpeciesListApi
                                                  .isSelected3.value = false;
                                              fishSpeciesListApi
                                                  .isSelected4.value = false;
                                              fishSpeciesListApi.finalSelected
                                                  .value = 'My log';
                                            },
                                            child: ToggleContainer(
                                                color: fishSpeciesListApi
                                                    .color1.value,
                                                isSelected: fishSpeciesListApi
                                                    .isSelected1.value,
                                                text: 'My log'),
                                          )),
                                      Obx(() => GestureDetector(
                                            onTap: () {
                                              fishSpeciesListApi.color2.value =
                                                  fishSpeciesListApi
                                                      .selectedColor.value;
                                              fishSpeciesListApi.color1.value =
                                                  fishSpeciesListApi
                                                      .spareColor.value;
                                              fishSpeciesListApi.color3.value =
                                                  fishSpeciesListApi
                                                      .spareColor.value;
                                              fishSpeciesListApi.color4.value =
                                                  fishSpeciesListApi
                                                      .spareColor.value;
                                              fishSpeciesListApi
                                                  .isSelected2.value = true;
                                              fishSpeciesListApi
                                                  .isSelected1.value = false;
                                              fishSpeciesListApi
                                                  .isSelected3.value = false;
                                              fishSpeciesListApi
                                                  .isSelected4.value = false;
                                              fishSpeciesListApi.finalSelected
                                                  .value = 'Rod Ring Rulers';
                                            },
                                            child: ToggleContainer(
                                                color: fishSpeciesListApi
                                                    .color2.value,
                                                isSelected: fishSpeciesListApi
                                                    .isSelected2.value,
                                                text: 'Rod Ring Rulers'),
                                          )),
                                      Obx(() => GestureDetector(
                                            onTap: () {
                                              fishSpeciesListApi.color3.value =
                                                  fishSpeciesListApi
                                                      .selectedColor.value;
                                              fishSpeciesListApi.color2.value =
                                                  fishSpeciesListApi
                                                      .spareColor.value;
                                              fishSpeciesListApi.color1.value =
                                                  fishSpeciesListApi
                                                      .spareColor.value;
                                              fishSpeciesListApi.color4.value =
                                                  fishSpeciesListApi
                                                      .spareColor.value;
                                              fishSpeciesListApi
                                                  .isSelected3.value = true;
                                              fishSpeciesListApi
                                                  .isSelected1.value = false;
                                              fishSpeciesListApi
                                                  .isSelected2.value = false;
                                              fishSpeciesListApi
                                                  .isSelected4.value = false;
                                              fishSpeciesListApi.finalSelected
                                                  .value = 'Drifnet Ethos';
                                            },
                                            child: ToggleContainer(
                                                color: fishSpeciesListApi
                                                    .color3.value,
                                                isSelected: fishSpeciesListApi
                                                    .isSelected3.value,
                                                text: 'Driftnet Ethos'),
                                          )),
                                      Obx(() => GestureDetector(
                                            onTap: () {
                                              fishSpeciesListApi.color4.value =
                                                  fishSpeciesListApi
                                                      .selectedColor.value;
                                              fishSpeciesListApi.color2.value =
                                                  fishSpeciesListApi
                                                      .spareColor.value;
                                              fishSpeciesListApi.color1.value =
                                                  fishSpeciesListApi
                                                      .spareColor.value;
                                              fishSpeciesListApi.color3.value =
                                                  fishSpeciesListApi
                                                      .spareColor.value;
                                              fishSpeciesListApi
                                                  .isSelected4.value = true;
                                              fishSpeciesListApi
                                                  .isSelected1.value = false;
                                              fishSpeciesListApi
                                                  .isSelected2.value = false;
                                              fishSpeciesListApi
                                                  .isSelected3.value = false;
                                              fishSpeciesListApi.finalSelected
                                                  .value = 'Fish Spell Casters';
                                            },
                                            child: ToggleContainer(
                                                color: fishSpeciesListApi
                                                    .color4.value,
                                                isSelected: fishSpeciesListApi
                                                    .isSelected4.value,
                                                text: 'Fish Spell Casters'),
                                          )),
                                      SizedBox(height: 35.h),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 36.w, right: 36.w),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Button56(
                                                    onpressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    buttonText: 'Cancel',
                                                    textColor:
                                                        const Color(0xff485058),
                                                    width: 1,
                                                    widthColor:
                                                        const Color(0xff485058),
                                                    color: const Color(
                                                        0xffF2F9FF)),
                                                Button56Blue(
                                                    onpressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    buttonText: 'Done',
                                                    textColor:
                                                        const Color(0xffF2F9FF),
                                                    color:
                                                        const Color(0xff2B67A3))
                                              ]))
                                    ])));
                      },
                      child: Obx(() => fishSpeciesListApi
                              .finalSelected.value.isEmpty
                          ? BottomSheetContainer(
                              widgetText:
                                  Text15PtGrey(text: 'Connect with Challenge'))
                          : BottomSheetContainerUpdate(
                              widgetText: Text16PtBlack(
                              text: fishSpeciesListApi.finalSelected.value,
                            )))),
                  SizedBox(height: 18.h),
                  Text15PtBlue(text: 'Select Location'),
                  SizedBox(height: 14.h),
                  TextF(
                      readOnly: false,
                      textEditingController: locationController,
                      hintText: 'Select location',
                      textInputType: TextInputType.text,
                      prefix: null,
                      onchanged: (value) {}),
                  SizedBox(height: 18.h),
                  Text15PtBlue(text: 'Enter Weight (g)'),
                  SizedBox(height: 14.h),
                  TextF(
                      readOnly: false,
                      textEditingController: weightController,
                      hintText: 'Enter weight g',
                      textInputType: TextInputType.number,
                      prefix: null,
                      onchanged: (value) {}),
                  SizedBox(height: 18.h),
                  Text15PtBlue(text: 'Enter Length (cm)'),
                  SizedBox(height: 14.h),
                  TextF(
                      readOnly: false,
                      textEditingController: lengthController,
                      hintText: 'Enter length cm',
                      textInputType: TextInputType.number,
                      prefix: null,
                      onchanged: (value) {}),
                  SizedBox(height: 18.h),
                  Text15PtBlue(text: 'Enter Bait'),
                  SizedBox(height: 14.h),
                  TextF(
                      readOnly: false,
                      textEditingController: baitController,
                      hintText: 'Enter',
                      textInputType: TextInputType.text,
                      prefix: null,
                      onchanged: (value) {}),
                  SizedBox(height: 18.h),
                  Text15PtBlue(text: 'Add Comment'),
                  SizedBox(height: 14.h),
                  TextF(
                      readOnly: false,
                      textEditingController: commentController,
                      hintText: 'make a note',
                      textInputType: TextInputType.text,
                      prefix: null,
                      onchanged: (value) {})
                ],
              ),
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 48.h, left: 36.w, right: 36.w),
            child: MyButton(
                onpressed: () {
                  addCatchlogApi
                      .addCatch(
                          2,
                          2,
                          fetchAdress.address.value,
                          weightController.text,
                          lengthController.text,
                          file!,
                          2,
                          lat,
                          lng,
                          baitController.text,
                          25,
                          commentController.text)
                      .then((value) {
                    Get.to(() => BottomNavigation(currentIndex: 0));
                    fishSpeciesListApi.finalSelected.value = '';
                    fishSpeciesListApi.selectedFish.value = '';
                  });
                },
                buttonText: 'Save'))
      ]),
    );
  }
}
