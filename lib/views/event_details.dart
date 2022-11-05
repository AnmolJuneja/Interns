import 'package:flutter/material.dart';
import 'package:reelpro/consts/appbar.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/event_details.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/consts/toggle_container.dart';
import 'package:reelpro/models/event_details.dart';
import 'package:reelpro/view_models/event_details.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/view_models/fish_species_list.dart';
import 'package:reelpro/views/bottom_navigation.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reelpro/views/participated_event.dart';

class EventDetailsUI extends StatefulWidget {
  final int eventId;
  const EventDetailsUI({Key? key, required this.eventId}) : super(key: key);

  @override
  State<EventDetailsUI> createState() => _EventDetailsUIState();
}

class _EventDetailsUIState extends State<EventDetailsUI> {
  final instance = Get.put(FishSpeciesListApi());
  var valueOfList = ''.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF2F9FF),
        appBar: AppBar(
          toolbarHeight: 110.h,
          centerTitle: true,
          title: Text21PtBlack(text: 'Tuff Man Series'),
          elevation: 0,
          backgroundColor: const Color(0xffF2F9FF),
          leading: Padding(
              padding: EdgeInsets.only(left: 36.w),
              child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                BottomNavigation(currentIndex: 3)));
                  },
                  child:
                      const Icon(Icons.arrow_back_ios, color: Colors.black))),
        ),
        body: FutureBuilder<EventDetails>(
            future: EventDetailsApi().getDetails(widget.eventId),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 700.h,
                      width: 428.w,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Column(children: [
                              EventDetailsConst(
                                image: snapshot.data!.data!.banner == null
                                    ? const DecorationImage(
                                        fit: BoxFit.cover,
                                        image:
                                            AssetImage('assets/images/no.png'))
                                    : DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            snapshot.data!.data!.banner)),
                                text15: '12',
                                text2: 'Days',
                                text16: '19',
                                text17: 'Hours',
                                text18: snapshot.data!.data!.address.toString(),
                              ),
                              EventDetailsRow(
                                image: 'assets/images/Icon open-location.png',
                                text: snapshot.data!.data!.address.toString(),
                                image1: 'assets/images/Icon-Outline-map.png',
                                text1: 'Get directions',
                                image2: 'assets/images/Icon-Fill-person.png',
                                text2:
                                    snapshot.data!.data!.teamSizeMin.toString(),
                                text4:
                                    snapshot.data!.data!.teamSizeMax.toString(),
                                text5: ' (team size)',
                                text6: 'Starts on',
                                imagedate:
                                    'assets/images/Icon material-date-range.png',
                                text7: ' Mon, 19 September',
                                imagetime: 'assets/images/Subtraction 1.png',
                                text8: '8:07 AM',
                                text9: 'Ends on',
                                text10: '6:00 PM',
                                text11: 'About Event',
                                text12: snapshot.data!.data!.about.toString(),
                                text13: 'More',
                              ),
                            ])
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                        height: 60.h,
                        padding: EdgeInsets.only(left: 36.w, bottom: 10.h),
                        child: Row(
                          children: [
                            MyButton1(
                              onpressed: () {
                                Get.bottomSheet(
                                    Container(
                                      height: 517.h,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(25)),
                                          color: Color(0xffF2F9FF)),
                                      child: Padding(
                                          padding: EdgeInsets.only(top: 51.h),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 36.w, right: 36.w),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text14PtGrey(
                                                          text:
                                                              'Total Payable'),
                                                      SizedBox(height: 10.h),
                                                      Text16PtBlack(
                                                          text: '\$500'),
                                                      SizedBox(height: 20.h),
                                                      const Divider(
                                                          thickness: 1),
                                                      SizedBox(height: 20.h),
                                                      Text14PtGrey(
                                                          text: 'Pay Through'),
                                                    ],
                                                  ),
                                                ),
                                                ListView(
                                                  shrinkWrap: true,
                                                  physics:
                                                      const NeverScrollableScrollPhysics(),
                                                  children: registerationType
                                                      .map((e) =>
                                                          GestureDetector(
                                                            onTap: () {
                                                              valueOfList
                                                                  .value = e;
                                                            },
                                                            child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  top: 20.h,
                                                                ),
                                                                child: Obx(() => ToggleContainer(
                                                                    color: valueOfList.value ==
                                                                            e
                                                                        ? instance
                                                                            .selectedItemcolor
                                                                            .value
                                                                        : instance
                                                                            .transparentColor
                                                                            .value,
                                                                    isSelected:
                                                                        valueOfList.value ==
                                                                                e
                                                                            ? true
                                                                            : false,
                                                                    text: e))),
                                                          ))
                                                      .toList(),
                                                ),
                                                SizedBox(height: 10.h),
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
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            buttonText:
                                                                'Cancel',
                                                            textColor:
                                                                Colors.black,
                                                            width: 1,
                                                            widthColor:
                                                                Colors.black,
                                                            color: const Color(
                                                                0xffF2F9FF)),
                                                        Button56Blue(
                                                            onpressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                              Get.bottomSheet(
                                                                  Container(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top: 72
                                                                            .h,
                                                                        left: 36
                                                                            .w,
                                                                        right: 36
                                                                            .w),
                                                                height: 370.h,
                                                                decoration: const BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.vertical(
                                                                            top: Radius.circular(
                                                                                25)),
                                                                    color: Color(
                                                                        0xffF2F9FF)),
                                                                child: Column(
                                                                    children: [
                                                                      SvgPicture
                                                                          .asset(
                                                                              'assets/images/tick.svg'),
                                                                      SizedBox(
                                                                          height:
                                                                              28.h),
                                                                      Text(
                                                                        'Congratulations!',
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Helvetica',
                                                                            fontSize:
                                                                                25.sp,
                                                                            fontWeight: FontWeight.bold,
                                                                            color: Colors.black),
                                                                      ),
                                                                      SizedBox(
                                                                          height:
                                                                              16.h),
                                                                      Container(
                                                                        height:
                                                                            39.h,
                                                                        width:
                                                                            200.w,
                                                                        child:
                                                                            const Text(
                                                                          'You have successfully participated in the event.',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: TextStyle(
                                                                              fontFamily: 'Helvetica',
                                                                              fontWeight: FontWeight.w500,
                                                                              color: Color(0xff485058)),
                                                                        ),
                                                                      )
                                                                    ]),
                                                              ));
                                                              navigateToAnotherPage();
                                                            },
                                                            buttonText: 'Done',
                                                            textColor:
                                                                const Color(
                                                                    0xffF2F9FF),
                                                            color: const Color(
                                                                0xff2B67A3))
                                                      ]),
                                                )
                                              ])),
                                    ),
                                    isScrollControlled: true);
                              },
                              buttonText: "\$550  |  Register",
                            ),
                            SizedBox(width: 20.w),
                            const Image(
                                image:
                                    AssetImage('assets/images/Group 210.png'))
                          ],
                        ))
                  ],
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            }));
  }

  navigateToAnotherPage() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    await Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
            builder: (context) => ParticipatedEventUI(eventId: widget.eventId)),
        (route) => false);
  }

  final List<String> registerationType = [
    'Credit/Debit Card',
    'Apple Pay',
    'PayPal'
  ];
}
