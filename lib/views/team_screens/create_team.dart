import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/consts/text_field.dart';
import 'package:reelpro/consts/text_fieldc.dart';
import 'package:reelpro/consts/toggle_container.dart';
import 'package:reelpro/controllers/registeration_controllers.dart';
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/view_models/team_and_profile_request/create_team.dart';
import 'package:reelpro/controllers/fetch_lat_lng.dart';
import 'package:reelpro/views/team_screens/manage_team_screen.dart';
import 'package:reelpro/views/team_screens/team_list.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateTeamView extends StatefulWidget {
  const CreateTeamView({
    Key? key,
  }) : super(key: key);

  @override
  State<CreateTeamView> createState() => _CreateTeamViewState();
}

class _CreateTeamViewState extends State<CreateTeamView> {
  TextEditingController descriptionController = TextEditingController();
  TextEditingController groupNameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController visibilityController = TextEditingController();
  TextEditingController searchController = TextEditingController();
  final createTeam = Get.put(CreateTeamApi());
  final teamApi = Get.put(CreateTeamApi());
  final instanceRegisterationStepTwo = Get.put(RegistrationStepTwo2());
  File? file;
  ImagePicker picker = ImagePicker();
  final double lat = 30.403648;
  final double lng = 74.027962;
  final visibility = 'Public'.obs;

  var isSelected = false.obs;
  var color = false.obs;
  final fetchAdress = Get.put(FetchLatLng());
  @override
  void initState() {
    locationController.text = fetchAdress.address.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: const Color(0xffF2F9FF),
            centerTitle: true,
            title: Text21PtBlack(text: 'Create a Team'),
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
            padding: EdgeInsets.only(left: 36.w, right: 36.w, top: 26.h),
            child: SingleChildScrollView(
                child: Column(children: [
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
              Center(child: Text14PtBlue(text: 'Add group pic')),
              SizedBox(height: 34.h),
              TextF(
                  readOnly: false,
                  textEditingController: groupNameController,
                  onchanged: (value) {
                    descriptionController.text.isNotEmpty
                        ? color.value = true
                        : color.value = false;
                  },
                  hintText: 'Group name',
                  textInputType: TextInputType.text,
                  prefix: null),
              // ignore: use_full_hex_values_for_flutter_colors

              SizedBox(height: 8.h),
              BigTextField(
                  textEditingController: descriptionController,
                  onchanged: (value) {},
                  hintText: 'Description',
                  textInputType: TextInputType.text),
              // ignore: use_full_hex_values_for_flutter_colors

              SizedBox(height: 8.h),
              GestureDetector(
                onTap: () {
                  Get.bottomSheet(
                      Container(
                        padding: EdgeInsets.only(top: 40.h),
                        height: 800.h,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(25)),
                            color: Color(0xffF2F9FF)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 36.w, right: 36.w),
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
                                          textColor: const Color(0xffF2F9FF),
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
              SizedBox(height: 8.h),
              Obx(() => GestureDetector(
                  onTap: () {
                    Get.bottomSheet(Container(
                      height: 475.h,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(25)),
                          color: Color(0xffF2F9FF)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 40.h, left: 36.w),
                              child: Text15PtBlue(text: 'Group Visibility'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 45.h, bottom: 25.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Obx(
                                    () => GestureDetector(
                                      onTap: () {
                                        instanceRegisterationStepTwo
                                            .publicisSelected.value = true;
                                        instanceRegisterationStepTwo
                                            .privateisSelected.value = false;
                                        instanceRegisterationStepTwo
                                            .selectedValue.value = 'Public';
                                      },
                                      child: Container(
                                        padding: EdgeInsets.only(
                                            left: 36.w,
                                            right: 100.w,
                                            top: 12.h),
                                        height: 100.h,
                                        width: double.infinity,
                                        color:
                                            instanceRegisterationStepTwo
                                                    .publicisSelected.value
                                                ? instanceRegisterationStepTwo
                                                    .selectedItemcolor.value
                                                : instanceRegisterationStepTwo
                                                    .publicColor.value,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text16PtBlack(
                                              text: 'Public',
                                            ),
                                            SizedBox(
                                              height: 8.h,
                                            ),
                                            Text14ptOpacity50(
                                                text:
                                                    'Your group and your groups posts are visible to everyone. Anyone can join.'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30.h),
                                  Obx(
                                    () => GestureDetector(
                                      onTap: () {
                                        instanceRegisterationStepTwo
                                            .privateisSelected.value = true;
                                        instanceRegisterationStepTwo
                                            .publicisSelected.value = false;
                                        instanceRegisterationStepTwo
                                            .selectedValue.value = 'Closed';
                                      },
                                      child: Container(
                                        padding: EdgeInsets.only(
                                            left: 36.w,
                                            right: 100.w,
                                            top: 12.h),
                                        height: 110.h,
                                        width: double.infinity,
                                        color: instanceRegisterationStepTwo
                                                .privateisSelected.value
                                            ? instanceRegisterationStepTwo
                                                .selectedItemcolor.value
                                            : instanceRegisterationStepTwo
                                                .privateColor.value,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text16PtBlack(
                                              text: 'Closed',
                                            ),
                                            SizedBox(
                                              height: 8.h,
                                            ),
                                            Text14ptOpacity50(
                                                text:
                                                    'Your group is visible to everyone. However, group posts are private. People must request to join.'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 15.h, left: 36.w, right: 36.w),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Button56(
                                        onpressed: () {
                                          instanceRegisterationStepTwo
                                              .selectedValue.value = '';
                                          instanceRegisterationStepTwo
                                              .publicisSelected.value = false;
                                          instanceRegisterationStepTwo
                                              .privateisSelected.value = false;
                                          Navigator.pop(context);
                                        },
                                        buttonText: 'Cancel',
                                        textColor: const Color(0xff485058),
                                        width: 1,
                                        widthColor: const Color(0xff485058),
                                        color: const Color(0xffF2F9FF)),
                                    Button56Blue(
                                        onpressed: () {
                                          groupNameController.text.isNotEmpty &&
                                                  descriptionController
                                                      .text.isNotEmpty
                                              ? color.value = true
                                              : color.value = false;
                                          Navigator.pop(context);
                                        },
                                        buttonText: 'Done',
                                        textColor: const Color(0xffF2F9FF),
                                        color: const Color(0xff2B67A3))
                                  ]),
                            )
                          ]),
                    ));
                  },
                  child: instanceRegisterationStepTwo.selectedValue.value == ''
                      ? TextFContainer(
                          text: 'Group visibility',
                        )
                      : TextFCon(
                          text: instanceRegisterationStepTwo
                              .selectedValue.value))),
              SizedBox(height: 177.h),
              Container(
                  height: 56.h,
                  width: 356.w,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  child: Obx(() => color.value
                      ? ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff2B67A3)),
                          onPressed: () async {
                            await createTeam
                                .createTeam(
                                    groupNameController.text,
                                    'location',
                                    file!,
                                    lat,
                                    lng,
                                    1,
                                    descriptionController.text)
                                .then((value) {
                              Get.to(const TeamViewView());
                            });
                            await SaveTeamCount().saveTeamCount(CreateTeamApi()
                                .getTeam1
                                .value
                                .length
                                .toString());
                          },
                          child: Text(
                            'Save',
                            style: TextStyle(
                                fontFamily: 'Helvetica',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xffF2F9FF)),
                          ))
                      : ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffBBBBBB)),
                          onPressed: () async {},
                          child: Text(
                            'Save',
                            style: TextStyle(
                                fontFamily: 'Helvetica',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xffF2F9FF)),
                          ))))
            ]))));
  }
}
