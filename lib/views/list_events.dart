import 'package:flutter/material.dart';
import 'package:reelpro/consts/text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reelpro/views/event_details.dart';

class ListOfEvents extends StatelessWidget {
  const ListOfEvents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF2F9FF),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return buildList(index);
            }));
  }
}

Widget buildList(int index) {
  return Padding(
    padding: EdgeInsets.only(bottom: 15.h, left: 36.w, right: 36.w),
    child: GestureDetector(
      onTap: () {
        Get.to(() => const EventDetailsUI());
      },
      child: SizedBox(
        height: 240.h,
        width: 356.w,
        child: Stack(children: [
          Positioned(
              top: 26.h,
              child: Container(
                height: 130.h,
                width: 356.w,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          // ignore: use_full_hex_values_for_flutter_colors
                          color: Color.fromRGBO(113, 154, 195, 0.16),
                          blurRadius: 0,
                          offset: Offset(0, 4))
                    ],
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 3, color: Colors.white),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/Group 8.png'))),
              )),
          Positioned(
              top: 110.h,
              left: 24.w,
              child: Image.asset('assets/images/fish.png')),
          Positioned(
              top: 165.h,
              left: 160.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text20PtBlack(text: 'Tuff Man Series'),
                  SizedBox(height: 7.h),
                  Text15PtBlue(text: 'Dallas Texas')
                ],
              )),
          Positioned(
              top: 191.h, left: 326.w, child: const Icon(Icons.star_outline)),
          Positioned(left: 263.w, child: Image.asset('assets/images/tag.png'))
        ]),
      ),
    ),
  );
}
