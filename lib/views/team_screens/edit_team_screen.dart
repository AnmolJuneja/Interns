// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:reelpro/consts/big_text.dart';
// import 'package:reelpro/consts/text.dart';
// import 'package:reelpro/consts/text_field.dart';
// import 'package:reelpro/models/edit_profile.dart';
// import 'package:reelpro/view_models/create_team.dart';
// import 'package:reelpro/view_models/edit_profile.dart';
// import 'package:reelpro/views/team_list.dart';

// class EditTeam extends StatefulWidget {
//   String? groupName;
//   String? groupDescription;
//   String? location;
//   String? visibility;
//   File? image;
//   EditTeam(
//       {Key? key,
//       this.groupName,
//       this.groupDescription,
//       this.location,
//       this.visibility,
//       this.image})
//       : super(key: key);

//   @override
//   // ignore: no_logic_in_create_state
//   State<EditTeam> createState() =>
//       _EditTeamState(groupName, groupDescription, location, visibility, image);
// }

// class _EditTeamState extends State<EditTeam> {
//   String? groupName;
//   String? groupDescription;
//   String? location;
//   String? visibility;
//   File? image;
//   _EditTeamState(this.groupName, this.groupDescription, this.location,
//       this.visibility, this.image);
//   TextEditingController descriptionController = TextEditingController();
//   TextEditingController groupNameController = TextEditingController();
//   TextEditingController locationController = TextEditingController();
//   TextEditingController visibilityController = TextEditingController();
//   final createTeam = Get.put(CreateTeamApi());
//   File? file;
//   ImagePicker picker = ImagePicker();
//   final double lat = 30.403648;
//   final double lng = 74.027962;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: Container(
//             color: const Color(0xffF2F9FF),
//             padding: EdgeInsets.only(left: 36.w, right: 36.w, top: 71.h),
//             // height: 752,
//             child: SingleChildScrollView(
//                 child: Column(children: [
//               Row(children: [
//                 Image(
//                     image: const AssetImage('assets/images/ios.png'),
//                     height: 20.h,
//                     width: 11.43.w),
//                 SizedBox(width: 94.57.w),
//                 Text21PtBlack(text: 'Edit Team')
//               ]),
//               SizedBox(height: 44.h),
//               GestureDetector(
//                   onTap: () async {
//                     XFile? xFile =
//                         await picker.pickImage(source: ImageSource.gallery);
//                     if (xFile != null) {
//                       setState(() {
//                         file =File(xFile.path) ;
//                       });
//                     }
//                   },
//                   child: Container(
//                       child: file != null
//                           ? Container(
//                               height: 132.h,
//                               width: 132.w,
//                               child: const Image(
//                                   image:
//                                       AssetImage('assets/images/profile.png')),
//                             )
//                           : Container(
//                               height: 132.h,
//                               width: 132.w,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(15),
//                                   border: Border.all(
//                                       color: Colors.white, width: 3)),
//                               child: Image.file(image!)))),

//               SizedBox(height: 9.h),
//               Center(child: Text14Pt(text: 'Add group pic')),
//               SizedBox(height: 34.h),
//               TextFhint(
//                   textEditingController: groupNameController,
//                   onchanged: (value) {

//                   },
//                   hintText: groupName.toString(),
//                   textInputType: TextInputType.text,
//                   prefix: null),
//               // ignore: use_full_hex_values_for_flutter_colors

//               SizedBox(height: 8.h),
//               BigTextFieldhint(
//                   textEditingController: descriptionController,
//                   onchanged: (value) {
                   
//                   },
//                   hintText: groupDescription.toString(),
//                   textInputType: TextInputType.text),
//               // ignore: use_full_hex_values_for_flutter_colors

//               SizedBox(height: 8.h),
//               TextFhint(
//                   textEditingController: locationController,
//                   hintText: location.toString(),
//                   textInputType: TextInputType.text,
//                   onchanged: (value) {},
//                   prefix: null),
//               SizedBox(height: 8.h),
//               TextFhint(
//                   textEditingController: visibilityController,
//                   onchanged: (value) {
//                   },
//                   hintText: visibility.toString(),
//                   textInputType: TextInputType.number,
//                   prefix: null),
//               SizedBox(height: 177.h),
//               Container(
//                 height: 56.h,
//                 width: 356.w,
//                 decoration:
//                     BoxDecoration(borderRadius: BorderRadius.circular(5)),
//                 child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                         primary: const Color(0xff2B67A3)),
//                     onPressed: () async {
//                       await createTeam.createTeam(
//                           groupNameController.text,
//                           locationController.text,
//                           file!,
//                           lat,
//                           lng,
//                           visibilityController.text,
//                           descriptionController.text);
//                       Get.to(const TeamViewView());
//                     },
//                     child: Text(
//                       'Save',
//                       style: TextStyle(
//                           fontFamily: 'Helvetica',
//                           fontSize: 16.sp,
//                           fontWeight: FontWeight.w400,
//                           color: const Color(0xffF2F9FF)),
//                     )),
//               )
//             ]))));
//   }
// }
