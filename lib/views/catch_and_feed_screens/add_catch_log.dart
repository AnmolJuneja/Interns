import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/container.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/consts/text_field.dart';
import 'package:reelpro/consts/toggle_container.dart';
import 'package:reelpro/controllers/feed_and_catch_controllers.dart';
import 'package:reelpro/models/catchlog_list_response.dart';
import 'package:reelpro/view_models/feed_and_catch_network_request/all_catchlog_request.dart';
import 'package:reelpro/controllers/fetch_lat_lng.dart';
import 'package:reelpro/views/bottom_navigation_screens/bottom_navigation.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:image_cropper/image_cropper.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
  List<File> file = [];
  final fishSpeciesListApi = Get.put(AddFeedApi1());
  TextEditingController weightController = TextEditingController();
  TextEditingController lengthController = TextEditingController();
  TextEditingController baitController = TextEditingController();
  TextEditingController commentController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController searchController = TextEditingController();
  final fetchAdress = Get.put(FetchLatLng());
  var value1 = 'Connect with Challenge'.obs;
  var value = 'Select Fishtype'.obs;
  var isSelected = false.obs;
  @override
  Widget build(BuildContext context) {
    double lat = 30.403648;
    double lng = 74.027962;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Padding(
            padding: EdgeInsets.only(right: 120.w),
            child: Text21PtBlack(text: 'Add Catch Log')),
        backgroundColor: const Color(0xffF2F9FF),
        leading: Padding(
            padding: EdgeInsets.only(left: 36.w),
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
            height: 640.h,
            padding: EdgeInsets.only(
              left: 36.w,
              right: 36.w,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 26.h),
                  Text15PtBlue(text: 'Click Pictures or Videos'),
                  SizedBox(height: 14.h),
                  GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        Get.bottomSheet(Container(
                          height: 200.h,
                          width: double.infinity,
                          decoration:
                              const BoxDecoration(color: Color(0xffF2F9FF)),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 35.h, left: 36.w, right: 36.w),
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
                      child: Row(children: [
                        Container(
                            child: file.isEmpty
                                ? SvgPicture.asset('assets/images/add.svg',
                                    height: 94.h, width: 94.w)
                                : Container(
                                    height: 94.h,
                                    width: 94.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: FileImage(file[0])),
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                            color: Colors.white, width: 3)),
                                  )),
                        SizedBox(width: 10.w),
                        file.length <= 1
                            ? SvgPicture.asset('assets/images/add.svg',
                                height: 94.h, width: 94.w)
                            : Container(
                                height: 94.h,
                                width: 94.w,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: FileImage(file[1])),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                        color: Colors.white, width: 3)),
                              ),
                      ])),
                  SizedBox(height: 28.h),
                  Text15PtBlue(text: 'Select Fishtype'),
                  SizedBox(height: 14.h),
                  GestureDetector(
                      onTap: () {
                        Get.bottomSheet(
                            Container(
                              padding: EdgeInsets.only(top: 48.h),
                              height: 800.h,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(25)),
                                  color: Color(0xffF2F9FF)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 36.w, right: 36.w, top: 20.h),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text15PtBlue(
                                                  text: 'Select Fishtype'),
                                              SizedBox(height: 25.h),
                                              TextFSearch(
                                                  textEditingController:
                                                      searchController,
                                                  hintText: 'Search',
                                                  textInputType:
                                                      TextInputType.text,
                                                  prefix: null,
                                                  onchanged: (value) {})
                                            ])),
                                    ListView(
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      children: fish
                                          .map((e) => GestureDetector(
                                                onTap: () {
                                                  value.value = e;
                                                },
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 14.h),
                                                    child: Obx(() => Column(
                                                          children: [
                                                            ToggleContainer1(
                                                                color: value.value ==
                                                                        e
                                                                    ? AddFeedApi1()
                                                                        .selectedItemcolor1
                                                                        .value
                                                                    : AddFeedApi1()
                                                                        .transparentColor1
                                                                        .value,
                                                                isSelected:
                                                                    value.value ==
                                                                            e
                                                                        ? true
                                                                        : false,
                                                                text: e)
                                                          ],
                                                        ))),
                                              ))
                                          .toList(),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: Platform.isIOS ? 30.h : 80.h,
                                          left: 36.w,
                                          right: 36.w),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Button56(
                                                onpressed: () {
                                                  value.value =
                                                      'Select Fishtype';
                                                  Navigator.pop(context);
                                                },
                                                buttonText: 'Cancel',
                                                textColor: Colors.black,
                                                width: 1,
                                                widthColor: Colors.black,
                                                color: const Color(0xffF2F9FF)),
                                            Button56Blue(
                                                onpressed: () {
                                                  Navigator.pop(context);
                                                },
                                                buttonText: 'Done',
                                                textColor:
                                                    const Color(0xffF2F9FF),
                                                color: const Color(0xff2B67A3))
                                          ]),
                                    )
                                  ]),
                            ),
                            isScrollControlled: true);
                      },
                      child: Obx(() => value.value == 'Select Fishtype'
                          ? BottomSheetContainer(
                              widgetText: Text15PtGrey(text: 'Select Fishtype'))
                          : BottomSheetContainerUpdate(
                              widgetText: Text16PtBlack(text: value.value)))),
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
                                      SizedBox(height: 15.h),
                                      ListView(
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        children: challenge
                                            .map((e) => GestureDetector(
                                                  onTap: () {
                                                    value1.value = e;
                                                  },
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 4.h),
                                                      child: Obx(() => ToggleContainer(
                                                          color: value1.value ==
                                                                  e
                                                              ? AddFeedApi1()
                                                                  .selectedItemcolor1
                                                                  .value
                                                              : AddFeedApi1()
                                                                  .transparentColor1
                                                                  .value,
                                                          isSelected:
                                                              value1.value == e
                                                                  ? true
                                                                  : false,
                                                          text: e))),
                                                ))
                                            .toList(),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 36.w,
                                              right: 36.w,
                                              top:
                                                  Platform.isIOS ? 10.h : 60.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Button56(
                                                    onpressed: () {
                                                      value1.value =
                                                          'Connect with Challenge';
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
                      child: Obx(() => value1.value == 'Connect with Challenge'
                          ? BottomSheetContainer(
                              widgetText:
                                  Text15PtGrey(text: 'Connect with Challenge'))
                          : BottomSheetContainerUpdate(
                              widgetText: Text16PtBlack(
                              text: value1.value,
                            )))),
                  SizedBox(height: 18.h),
                  Text15PtBlue(text: 'Select Location'),
                  SizedBox(height: 14.h),
                  GestureDetector(
                    onTap: () {
                      Get.bottomSheet(
                          Container(
                            padding: EdgeInsets.only(top: 40.h),
                            height: 800.h,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(25)),
                                color: Color(0xffF2F9FF)),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 36.w, right: 36.w),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text15PtBlue(text: 'Tag Location'),
                                          SizedBox(height: 30.h),
                                          TextFSearch(
                                              textEditingController:
                                                  searchController,
                                              hintText: 'Search',
                                              textInputType: TextInputType.text,
                                              prefix: null,
                                              onchanged: (value) {}),
                                        ]),
                                  ),
                                  SizedBox(height: 30.h),
                                  Obx(() => GestureDetector(
                                        onTap: () {
                                          isSelected.value = true;
                                        },
                                        child: ToggleContainer(
                                            color: isSelected.value
                                                ? const Color(0xffd6e9ff)
                                                : const Color(0xffF2F9FF),
                                            isSelected: isSelected.value,
                                            text: fetchAdress.address.value),
                                      )),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 460.h, left: 36.w, right: 36.w),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Button56(
                                              onpressed: () {
                                                Navigator.pop(context);
                                                isSelected.value = false;
                                              },
                                              buttonText: 'Cancel',
                                              textColor: Colors.black,
                                              width: 1,
                                              widthColor: Colors.black,
                                              color: const Color(0xffF2F9FF)),
                                          Button56Blue(
                                              onpressed: () {
                                                Navigator.pop(context);
                                              },
                                              buttonText: 'Done',
                                              textColor:
                                                  const Color(0xffF2F9FF),
                                              color: const Color(0xff2B67A3))
                                        ]),
                                  )
                                ]),
                          ),
                          isScrollControlled: true);
                    },
                    child: Container(
                        padding: EdgeInsets.only(
                            top: 17.h, bottom: 14.h, left: 20.w, right: 20.w),
                        height: 52.h,
                        width: 356.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(113, 154, 195, 0.16),
                                  blurRadius: 0,
                                  offset: Offset(0, 4))
                            ],
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Obx(() => isSelected.value
                                ? Text16PtBlack(
                                    text: fetchAdress.address.toString())
                                : Text15PtGrey(text: 'Select Location')),
                            SvgPicture.asset('assets/images/open-location.svg')
                          ],
                        )),
                  ),
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
                      onchanged: (value) {}),
                  SizedBox(height: 10.h)
                ],
              ),
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 55.h, left: 36.w, right: 36.w),
            child: MyButton(
                onpressed: () {
                  addCatchlogApi
                      .addCatch(
                          2,
                          2,
                          fetchAdress.address.value,
                          weightController.text,
                          lengthController.text,
                          file,
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

  final List<String> challenge = [
    'My log',
    'Rod Ring Rulers',
    'Driftnet Ethos',
    'Fish Spell Casters'
  ];
  final List<String> fish = [
    'Bass',
    'Bluegill',
    'Carp',
    'Catfish',
    'Crappy',
    'Flounder'
  ];
  Future openCamera() async {
    try {
      final images = await ImagePicker().pickImage(source: ImageSource.camera);
      if (images == null) return;
      File? tempPath = File(images.path);
      tempPath = await cropImage(imageFile: tempPath);
      setState(() {
        file.add(tempPath!);
        // Navigator.of(context).pop();
      });
    } on PlatformException catch (e) {
      print(e);
      Navigator.of(context).pop();
    }
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

  Future openGallery() async {
    try {
      final images = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (images == null) return;
      File? tempPath = File(images.path);
      tempPath = await cropImage(imageFile: tempPath);
      setState(() {
        file.add(tempPath!);
      });
    } on PlatformException catch (e) {
      print(e);
      Navigator.of(context).pop();
    }
  }
}
