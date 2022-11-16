import 'package:flutter/material.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/container.dart';
import 'package:reelpro/consts/event_details.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/models/event_details.dart';
import 'package:reelpro/view_models/event_network_request/event_details.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/views/catch_and_feed_screens/add_catch_log.dart';
import 'package:reelpro/views/bottom_navigation_screens/bottom_navigation.dart';
import 'package:get/get.dart';
import 'package:reelpro/views/event_screens/teams_anglers.dart';

class ParticipatedEventUI extends StatefulWidget {
  final eventId;
  const ParticipatedEventUI({Key? key, required this.eventId})
      : super(key: key);

  @override
  State<ParticipatedEventUI> createState() => _ParticipatedEventUIState();
}

class _ParticipatedEventUIState extends State<ParticipatedEventUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F9FF),
      appBar: AppBar(
        // toolbarHeight: 110.h,
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
                child: const Icon(Icons.arrow_back_ios, color: Colors.black))),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 700.h,
          width: 428.w,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 36.w, right: 36.w),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('assets/images/for designer.png',
                                    height: 64.h, width: 64.w),
                                SizedBox(width: 6.w),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text16PtBlack(text: 'Anthony William'),
                                      // SizedBox(height: 4.h),
                                      Text14Pt58(text: 'Austin, Texas')
                                    ])
                              ]),
                          Image.asset('assets/images/no1.png',
                              height: 54.h, width: 46.w)
                        ])),
                SizedBox(height: 10.h),
                FutureBuilder<EventDetails>(
                  future: EventDetailsApi().getDetails(widget.eventId),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(children: [
                        EventDetailsConst1(
                          image: snapshot.data!.data!.banner == null
                              ? const DecorationImage(
                                  // fit: BoxFit.cover,
                                  image: AssetImage('assets/images/no.png'))
                              : DecorationImage(
                                  image: NetworkImage(
                                      snapshot.data!.data!.banner)),
                          text15: '12',
                          text2: 'Days',
                          text16: '19',
                          text17: 'Hours',
                          text18: 'Team event',
                        ),
                        SizedBox(height: 16.h),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const TeamsAnglersUI());
                          },
                          child: Container(
                            height: 94.h,
                            width: 356.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.w, right: 16.w, top: 14.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(children: [
                                      CircleContainerBlue(text: '41'),
                                      SizedBox(height: 8.h),
                                      Text14PtGrey(text: 'Teams')
                                    ]),
                                    Column(children: [
                                      CircleContainerBlue(text: '82'),
                                      SizedBox(height: 8.h),
                                      Text14PtGrey(text: 'Anglers')
                                    ]),
                                    Column(children: [
                                      CircleContainerBlue(text: '12'),
                                      SizedBox(height: 8.h),
                                      Text14PtGrey(text: 'logged')
                                    ]),
                                    Column(children: [
                                      CircleContainerBlue(text: '0'),
                                      SizedBox(height: 8.h),
                                      Text14PtGrey(text: 'New')
                                    ]),
                                  ]),
                            ),
                          ),
                        ),
                        EventDetailsRow1(
                          image: 'assets/images/Icon open-location.png',
                          text: snapshot.data!.data!.address.toString(),
                          image1: 'assets/images/Icon-Outline-map.png',
                          text1: 'Get directions',
                          image2: 'assets/images/Icon-Fill-person.png',
                          text6: 'Starts on',
                          imagedate:
                              'assets/images/Icon material-date-range.png',
                          text7: ' Mon, 19 September',
                          imagetime: 'assets/images/Subtraction 1.png',
                          text8: '8:07 AM',
                          text9: 'Ends on',
                          text10: '6:00 PM',
                        ),
                      ]);
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ],
            ),
          ),
        ),
        // SizedBox(height: 20.h),
      ]),
      bottomSheet: Container(
          padding: EdgeInsets.only(left: 36.w, bottom: 60.h),
          child: MyButton(
              onpressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => const AddCatchLogUI()),
                    (route) => false);
              },
              buttonText: 'Log Your Catch')),
    );
  }
}
