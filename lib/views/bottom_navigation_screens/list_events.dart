import 'package:flutter/material.dart';
import 'package:reelpro/consts/text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reelpro/models/event_list.dart';
import 'package:reelpro/view_models/event_network_request/event_list.dart';
import 'package:reelpro/views/event_screens/event_details.dart';

class ListOfEvents extends StatefulWidget {
  const ListOfEvents({Key? key}) : super(key: key);

  @override
  State<ListOfEvents> createState() => _ListOfEventsState();
}

class _ListOfEventsState extends State<ListOfEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF2F9FF),
        body: FutureBuilder<EventListResponse>(
            future: EventListApi().getList1(),
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
        Get.to(() => EventDetailsUI(eventId: index.id!.toInt()));
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
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(height: 20.h),
                            Image.asset(
                              'assets/images/no.png',
                              height: 60.h,
                            ),
                            Text16PtBlack(text: '         No Image Available')
                          ],
                        ),
                      ),
                    )),
          Positioned(
              top: 110.h,
              left: 15.w,
              child: index.logo != null
                  ? Container(
                      height: 120.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(index.logo))))
                  : Container(
                      height: 120.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(113, 154, 195, 0.16),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                          child: Column(children: [
                        SizedBox(height: 30.h),
                        Image.asset(
                          'assets/images/no.png',
                          height: 30.h,
                        ),
                        SizedBox(height: 10.h),
                        Text16PtBlack(text: 'No Image')
                      ])),
                    )),
          Positioned(
              top: 165.h,
              left: 130.w,
              right: 5.w,
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
          Positioned(
              left: 263.w,
              top: 10.h,
              child: Image.asset(
                'assets/images/tag.png',
                color: const Color(0xff719AC3),
              )),
          Positioned(
              left: 288.w,
              top: 30.h,
              child: Column(children: [
                Text(
                  'Jan',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '01/21',
                  style: TextStyle(color: Colors.white),
                )
              ]))
        ]),
      ),
    ),
  );
}
