import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/small_container.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/views/list_events.dart';

class TeamsAnglersUI extends StatelessWidget {
  const TeamsAnglersUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            backgroundColor: const Color(0xffF2F9FF),
            appBar: AppBar(
              toolbarHeight: 70.h,
              centerTitle: true,
              title: Padding(
                  padding: EdgeInsets.only(top: 42.h),
                  child: Text21PtBlack(text: 'Anglers')),
              elevation: 0,
              backgroundColor: const Color(0xffF2F9FF),
              leading: Padding(
                  padding: EdgeInsets.only(top: 42.h, left: 36.w),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back_ios,
                          color: Colors.black))),
            ),
            body: Padding(
                padding: EdgeInsets.only(top: 24.h),
                child: Column(children: [
                  const TabBar(
                    indicatorWeight: 2.0,
                    isScrollable: false,
                    indicatorSize: TabBarIndicatorSize.tab,
                    automaticIndicatorColorAdjustment: true,
                    // automaticIndicatorColorAdjustment: false,
                    indicatorColor: Color(0xff2B67A3),
                    labelColor: Color(0xff2B67A3),
                    // ignore: use_full_hex_values_for_flutter_colors
                    unselectedLabelColor: Color.fromARGB(255, 59, 63, 68),
                    tabs: [Tab(text: 'Teams'), Tab(text: 'Anglers')],
                  ),
                  Flexible(
                    child: SizedBox(
                        width: double.infinity,
                        height: 700.h,
                        child: TabBarView(children: [
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 36.w, right: 36.w, top: 30.h),
                              child: Column(children: [
                                Container(
                                    height: 300.h,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                              // ignore: use_full_hex_values_for_flutter_colors
                                              color: Color.fromRGBO(
                                                  113, 154, 195, 0.16),
                                              blurRadius: 0,
                                              offset: Offset(0, 4))
                                        ],
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white),
                                    child: Column(children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 12.w, top: 16.h),
                                          child: Row(children: [
                                            Image.asset(
                                                'assets/images/pub5magl.png',
                                                height: 56.h,
                                                width: 56.w),
                                            SizedBox(width: 12.w),
                                            Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text20PtBlueMedium(
                                                      text: 'Trotting Titans'),
                                                  Text14PtGrey(
                                                      text: '12 Members')
                                                ])
                                          ])),
                                      Container(
                                        height: 100.h,
                                        padding: EdgeInsets.only(
                                            top: 24.h, left: 12.w),
                                        child: PageView.builder(
                                            itemCount: 2,
                                            itemBuilder: (context, index) {
                                              return Row(children: [
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w)
                                              ]);
                                            }),
                                      ),
                                      SizedBox(height: 10.h),
                                      const Divider(thickness: 1),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 10.h, left: 38.w, right: 38.w),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(children: [
                                                CircleContainerAnglers(
                                                    text: '1'),
                                                SizedBox(height: 5.h),
                                                Text14PtGrey(text: 'Rank')
                                              ]),
                                              Column(children: [
                                                CircleContainerAnglers(
                                                    text: '12'),
                                                SizedBox(height: 5.h),
                                                Text14PtGrey(text: 'Logged')
                                              ]),
                                              Column(children: [
                                                CircleContainerAnglers(
                                                    text: '0'),
                                                SizedBox(height: 5.h),
                                                Text14PtGrey(text: 'New')
                                              ]),
                                            ]),
                                      )
                                    ])),
                                SizedBox(height: 20.h),
                                Container(
                                    height: 300.h,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                              // ignore: use_full_hex_values_for_flutter_colors
                                              color: Color.fromRGBO(
                                                  113, 154, 195, 0.16),
                                              blurRadius: 0,
                                              offset: Offset(0, 4))
                                        ],
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white),
                                    child: Column(children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 12.w, top: 16.h),
                                          child: Row(children: [
                                            Image.asset(
                                                'assets/images/pub5magl.png',
                                                height: 56.h,
                                                width: 56.w),
                                            SizedBox(width: 12.w),
                                            Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text20PtBlueMedium(
                                                      text: 'Trotting Titans'),
                                                  Text14PtGrey(
                                                      text: '12 Members')
                                                ])
                                          ])),
                                      Container(
                                        height: 100.h,
                                        padding: EdgeInsets.only(
                                            top: 24.h, left: 12.w),
                                        child: PageView.builder(
                                            itemCount: 2,
                                            itemBuilder: (context, index) {
                                              return Row(children: [
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w)
                                              ]);
                                            }),
                                      ),
                                      SizedBox(height: 10.h),
                                      const Divider(thickness: 1),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 10.h, left: 38.w, right: 38.w),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(children: [
                                                CircleContainerAnglers(
                                                    text: '1'),
                                                SizedBox(height: 5.h),
                                                Text14PtGrey(text: 'Rank')
                                              ]),
                                              Column(children: [
                                                CircleContainerAnglers(
                                                    text: '12'),
                                                SizedBox(height: 5.h),
                                                Text14PtGrey(text: 'Logged')
                                              ]),
                                              Column(children: [
                                                CircleContainerAnglers(
                                                    text: '0'),
                                                SizedBox(height: 5.h),
                                                Text14PtGrey(text: 'New')
                                              ]),
                                            ]),
                                      )
                                    ])),
                              ])),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 36.w, right: 36.w, top: 30.h),
                              child: Column(children: [
                                Container(
                                    height: 300.h,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                              // ignore: use_full_hex_values_for_flutter_colors
                                              color: Color.fromRGBO(
                                                  113, 154, 195, 0.16),
                                              blurRadius: 0,
                                              offset: Offset(0, 4))
                                        ],
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white),
                                    child: Column(children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 12.w, top: 16.h),
                                          child: Row(children: [
                                            Image.asset(
                                                'assets/images/pub5magl.png',
                                                height: 56.h,
                                                width: 56.w),
                                            SizedBox(width: 12.w),
                                            Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text20PtBlueMedium(
                                                      text: 'Trotting Titans'),
                                                  Text14PtGrey(
                                                      text: '12 Members')
                                                ])
                                          ])),
                                      Container(
                                        height: 100.h,
                                        padding: EdgeInsets.only(
                                            top: 24.h, left: 12.w),
                                        child: PageView.builder(
                                            itemCount: 2,
                                            itemBuilder: (context, index) {
                                              return Row(children: [
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w)
                                              ]);
                                            }),
                                      ),
                                      SizedBox(height: 10.h),
                                      const Divider(thickness: 1),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 10.h, left: 38.w, right: 38.w),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(children: [
                                                CircleContainerAnglers(
                                                    text: '1'),
                                                SizedBox(height: 5.h),
                                                Text14PtGrey(text: 'Rank')
                                              ]),
                                              Column(children: [
                                                CircleContainerAnglers(
                                                    text: '12'),
                                                SizedBox(height: 5.h),
                                                Text14PtGrey(text: 'Logged')
                                              ]),
                                              Column(children: [
                                                CircleContainerAnglers(
                                                    text: '0'),
                                                SizedBox(height: 5.h),
                                                Text14PtGrey(text: 'New')
                                              ]),
                                            ]),
                                      )
                                    ])),
                                SizedBox(height: 20.h),
                                Container(
                                    height: 300.h,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                              // ignore: use_full_hex_values_for_flutter_colors
                                              color: Color.fromRGBO(
                                                  113, 154, 195, 0.16),
                                              blurRadius: 0,
                                              offset: Offset(0, 4))
                                        ],
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white),
                                    child: Column(children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 12.w, top: 16.h),
                                          child: Row(children: [
                                            Image.asset(
                                                'assets/images/pub5magl.png',
                                                height: 56.h,
                                                width: 56.w),
                                            SizedBox(width: 12.w),
                                            Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text20PtBlueMedium(
                                                      text: 'Trotting Titans'),
                                                  Text14PtGrey(
                                                      text: '12 Members')
                                                ])
                                          ])),
                                      Container(
                                        height: 100.h,
                                        padding: EdgeInsets.only(
                                            top: 24.h, left: 12.w),
                                        child: PageView.builder(
                                            itemCount: 2,
                                            itemBuilder: (context, index) {
                                              return Row(children: [
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w),
                                                Image.asset(
                                                    'assets/images/for designer.png',
                                                    height: 44.h,
                                                    width: 42.w)
                                              ]);
                                            }),
                                      ),
                                      SizedBox(height: 10.h),
                                      const Divider(thickness: 1),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 10.h, left: 38.w, right: 38.w),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(children: [
                                                CircleContainerAnglers(
                                                    text: '1'),
                                                SizedBox(height: 5.h),
                                                Text14PtGrey(text: 'Rank')
                                              ]),
                                              Column(children: [
                                                CircleContainerAnglers(
                                                    text: '12'),
                                                SizedBox(height: 5.h),
                                                Text14PtGrey(text: 'Logged')
                                              ]),
                                              Column(children: [
                                                CircleContainerAnglers(
                                                    text: '0'),
                                                SizedBox(height: 5.h),
                                                Text14PtGrey(text: 'New')
                                              ]),
                                            ]),
                                      )
                                    ])),
                              ])),
                        ])),
                  )
                ]))));
  }
}
