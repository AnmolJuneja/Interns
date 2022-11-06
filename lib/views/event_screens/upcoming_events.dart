import 'package:flutter/material.dart';
import 'package:reelpro/consts/text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reelpro/models/event_list.dart';
import 'package:reelpro/view_models/event_network_request/event_list.dart';
import 'package:reelpro/views/event_screens/event_details.dart';

class ListOfEvents2 extends StatefulWidget {
  const ListOfEvents2({Key? key}) : super(key: key);

  @override
  State<ListOfEvents2> createState() => _ListOfEvents2State();
}

class _ListOfEvents2State extends State<ListOfEvents2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF2F9FF),
        body: FutureBuilder<EventListResponse>(
            future: EventListApi().getList12(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data!.data!.length,
                    itemBuilder: (context, index) {
                      return buildList(snapshot.data!.data![index]);
                    });
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }
}

Widget buildList(EventList index) {
  return Padding(
    padding: EdgeInsets.only(bottom: 15.h, left: 36.w, right: 36.w),
    child: GestureDetector(
      onTap: () {
        Get.to(() =>  EventDetailsUI(eventId: index.id!.toInt(),));
      },
      child: SizedBox(
        height: 240.h,
        width: 356.w,
        child: Stack(children: [
          Positioned(
              top: 26.h,
              child: index.banner != null
                  ? Container(
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
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(index.banner))),
                    )
                  : Container(
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
                              image: AssetImage('assets/images/no.png'))),
                    )),
          Positioned(
              top: 110.h,
              left: 15.w,
              child: index.logo != null
                  ? Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image:
                              DecorationImage(image: NetworkImage(index.logo))))
                  : Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/no.png'))))),
          Positioned(
              top: 165.h,
              left: 130.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text20PtBlack(text: index.name.toString()),
                  SizedBox(height: 7.h),
                  Text15PtBlue(text: index.address.toString())
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
