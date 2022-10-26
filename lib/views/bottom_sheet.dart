import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/consts/text_field.dart';
import 'package:reelpro/consts/toggle_container.dart';
import 'package:reelpro/view_models/fish_species_list.dart';

// Widget buildBottomSheet() {
//   FishSpeciesListApi fishSpeciesListApi = Get.put(FishSpeciesListApi());
//   return Container(
//     height: 785.h,
//     decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(25),
//         color: const Color(0xffF2F9FF)),
//     child: FutureBuilder(
//         future: fishSpeciesListApi.getList1(),
//         builder: (context, snapshot) {
//           return Padding(
//             padding: EdgeInsets.only(
//               top: 48.h,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                     padding: EdgeInsets.only(left: 36.w),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text15PtBlue(text: 'Select Fishtype'),
//                         SizedBox(height: 31.h),
//                         TextFSearch(
//                             textEditingController: null,
//                             hintText: 'Search',
//                             textInputType: TextInputType.text,
//                             prefix: null,
//                             onchanged: null),
//                       ],
//                     )),
//                 SizedBox(height: 30.h),
//                 Container(
//                   height: 444.h,
//                   child: ListView.builder(
//                       itemCount: fishSpeciesListApi.getList.length,
//                       itemBuilder: (context, index) {
//                         return buildListItem1(
//                             fishSpeciesListApi.getList[index]);
//                       }),
//                 ),
//                 SizedBox(height: 60.h),
//                 Padding(
//                   padding: EdgeInsets.only(left: 36.w, right: 36.w),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Button56(
//                           onpressed: () {},
//                           buttonText: 'Cancel',
//                           textColor: const Color(0xff485058),
//                           color: const Color(0xffF2F9FF),
//                           width: 1,
//                           widthColor: const Color(0xff485058)),
//                       Button56Blue(
//                           onpressed: () {},
//                           buttonText: 'Done',
//                           textColor: const Color(0xffF2F9FF),
//                           color: const Color(0xff2B67A3))
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           );
//         }),
//   );
// }

// Widget buildListItem1(FishSpeciesList fishSpeciesList) {
//   FishSpeciesListApi fishSpeciesListApi = Get.put(FishSpeciesListApi());
//   return Obx(() => GestureDetector(
//         onTap: () {
//           fishSpeciesListApi.isSelected1.value = true;
//           fishSpeciesListApi.color1.value =
//               fishSpeciesListApi.selectedColor.value;
//         },
//         child: ToggleContainerBig(
//             color: fishSpeciesListApi.color1.value,
//             isSelected: fishSpeciesListApi.isSelected1.value,
//             fishImage: 'assets/images/Image.png',
//             text: fishSpeciesList.name.toString()),
//       ));
// }
class buildBottomSheet extends StatelessWidget {
  const buildBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     FishSpeciesListApi fishSpeciesListApi = Get.put(FishSpeciesListApi());
  return Container(
    height: 785.h,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color(0xffF2F9FF)),
    padding: EdgeInsets.only(top: 48.h),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 36.w, right: 36.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text15PtBlue(text: 'Select Fishtype'),
            SizedBox(height: 31.h),
            TextFSearch(
                textEditingController: null,
                hintText: 'Search',
                textInputType: TextInputType.text,
                prefix: null,
                onchanged: null),
          ])),
      SizedBox(height: 30.h),
      Obx(() => GestureDetector(
            onTap: () {
              fishSpeciesListApi.color5.value =
                  fishSpeciesListApi.selectedColor.value;
              fishSpeciesListApi.color6.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.color7.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.color8.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.color9.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.color10.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.isSelected5.value = true;
              fishSpeciesListApi.isSelected6.value = false;
              fishSpeciesListApi.isSelected7.value = false;
              fishSpeciesListApi.isSelected8.value = false;
              fishSpeciesListApi.isSelected9.value = false;
              fishSpeciesListApi.isSelected10.value = false;
              fishSpeciesListApi.selectedFish.value = 'Bass';
            },
            child: ToggleContainerBig(
                color: fishSpeciesListApi.color5.value,
                isSelected: fishSpeciesListApi.isSelected5.value,
                fishImage: 'assets/images/Image.png',
                text: 'Bass'),
          )),
      Obx(() => GestureDetector(
            onTap: () {
              fishSpeciesListApi.color6.value =
                  fishSpeciesListApi.selectedColor.value;
              fishSpeciesListApi.color5.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.color7.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.color8.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.color9.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.color10.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.isSelected6.value = true;
              fishSpeciesListApi.isSelected5.value = false;
              fishSpeciesListApi.isSelected7.value = false;
              fishSpeciesListApi.isSelected8.value = false;
              fishSpeciesListApi.isSelected9.value = false;
              fishSpeciesListApi.isSelected10.value = false;
              fishSpeciesListApi.selectedFish.value = 'Bluegill';
            },
            child: ToggleContainerBig(
                color: fishSpeciesListApi.color6.value,
                isSelected: fishSpeciesListApi.isSelected6.value,
                fishImage: 'assets/images/Image.png',
                text: 'Bluegill'),
          )),
      Obx(() => GestureDetector(
            onTap: () {
              fishSpeciesListApi.color7.value =
                  fishSpeciesListApi.selectedColor.value;
              fishSpeciesListApi.color6.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.color5.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.color8.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.color9.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.color10.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.isSelected7.value = true;
              fishSpeciesListApi.isSelected5.value = false;
              fishSpeciesListApi.isSelected6.value = false;
              fishSpeciesListApi.isSelected8.value = false;
              fishSpeciesListApi.isSelected9.value = false;
              fishSpeciesListApi.isSelected10.value = false;
              fishSpeciesListApi.selectedFish.value = 'Carp';
            },
            child: ToggleContainerBig(
                color: fishSpeciesListApi.color7.value,
                isSelected: fishSpeciesListApi.isSelected7.value,
                fishImage: 'assets/images/Image.png',
                text: 'Carp'),
          )),
      Obx(() => GestureDetector(
            onTap: () {
              fishSpeciesListApi.color8.value =
                  fishSpeciesListApi.selectedColor.value;
              fishSpeciesListApi.color5.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.color7.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.color6.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.color9.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.color10.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.isSelected8.value = true;
              fishSpeciesListApi.isSelected5.value = false;
              fishSpeciesListApi.isSelected7.value = false;
              fishSpeciesListApi.isSelected6.value = false;
              fishSpeciesListApi.isSelected9.value = false;
              fishSpeciesListApi.isSelected10.value = false;
              fishSpeciesListApi.selectedFish.value = 'Catfish';
            },
            child: ToggleContainerBig(
                color: fishSpeciesListApi.color8.value,
                isSelected: fishSpeciesListApi.isSelected8.value,
                fishImage: 'assets/images/Image.png',
                text: 'Catfish'),
          )),
      Obx(() => GestureDetector(
            onTap: () {
              fishSpeciesListApi.color9.value =
                  fishSpeciesListApi.selectedColor.value;
              fishSpeciesListApi.color5.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.color7.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.color8.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.color6.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.color10.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.isSelected9.value = true;
              fishSpeciesListApi.isSelected5.value = false;
              fishSpeciesListApi.isSelected7.value = false;
              fishSpeciesListApi.isSelected8.value = false;
              fishSpeciesListApi.isSelected6.value = false;
              fishSpeciesListApi.isSelected10.value = false;
              fishSpeciesListApi.selectedFish.value = 'Crappie';
            },
            child: ToggleContainerBig(
                color: fishSpeciesListApi.color9.value,
                isSelected: fishSpeciesListApi.isSelected9.value,
                fishImage: 'assets/images/Image.png',
                text: 'Crappie'),
          )),
      Obx(() => GestureDetector(
            onTap: () {
              fishSpeciesListApi.color10.value =
                  fishSpeciesListApi.selectedColor.value;
              fishSpeciesListApi.color5.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.color7.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.color8.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.color9.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.color6.value =
                  fishSpeciesListApi.spareColor.value;
              fishSpeciesListApi.isSelected10.value = true;
              fishSpeciesListApi.isSelected5.value = false;
              fishSpeciesListApi.isSelected7.value = false;
              fishSpeciesListApi.isSelected8.value = false;
              fishSpeciesListApi.isSelected9.value = false;
              fishSpeciesListApi.isSelected6.value = false;
              fishSpeciesListApi.selectedFish.value = 'Flounder';
            },
            child: ToggleContainerBig(
                color: fishSpeciesListApi.color10.value,
                isSelected: fishSpeciesListApi.isSelected10.value,
                fishImage: 'assets/images/Image.png',
                text: 'Flounder'),
          )),
      Padding(
        padding: EdgeInsets.only(top: 61.h, left: 36.w, right: 36.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Button56(
                onpressed: () {},
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
          ],
        ),
      )
    ]),
  );
  }
}
