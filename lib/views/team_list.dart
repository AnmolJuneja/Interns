import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:reelpro/consts/appbar.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/view_models/registeration_step_two.dart';
// import 'package:reelpro/models/team_view.dart';
import 'package:reelpro/view_models/team_list.dart';
import 'package:get/get.dart';
import 'package:reelpro/views/create_team.dart';
import 'package:reelpro/views/edit_team_screen.dart';
import 'package:reelpro/views/profile_settings.dart';
import '../models/team_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeamViewView extends StatefulWidget {
  const TeamViewView({Key? key}) : super(key: key);

  @override
  State<TeamViewView> createState() => _TeamViewViewState();
}

class _TeamViewViewState extends State<TeamViewView> {
  final teamApi = Get.put(TeamViewApi());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffF2F9FF),
          toolbarHeight: 60.h,
          elevation: 0,
          title: Padding(
              padding: EdgeInsets.only(top: 27.h),
              child: Text21PtBlack(text: 'Manage Teams')),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 27.h, right: 36.w),
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const CreateTeamView());
                },
                child: const Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
          ],
          leading: Padding(
              padding: EdgeInsets.only(top: 27.h, left: 36.w),
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const ProfileSettingsUI());
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              )),
        ),
        backgroundColor: const Color(0xffF2F9FF),
        body: Padding(
          padding: EdgeInsets.only(top: 30.h),
          child: Column(
            children: [
              FutureBuilder(
                  future: teamApi.getTeam12(),
                  builder: (context, snapshot) {
                    return SizedBox(
                        height: 785.h,
                        width: 428.w,
                        child: ListView.builder(
                            itemCount: teamApi.getTeam1.length,
                            itemBuilder: (context, index) {
                              return buildListTile(teamApi.getTeam1[index]);
                            }));
                  })
            ],
          ),
        ));
  }

  Widget buildListTile(TeamList items) {
    final instanceRegisterationStepTwo = Get.put(RegistrationStepTwo2());
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 36.w, left: 36.w),
          child: GestureDetector(
            onTap: () {},
            child: Container(
                margin: EdgeInsets.only(top: 12.h),
                padding: EdgeInsets.only(top: 16.h, left: 12.w, bottom: 16.h),
                height: 96.h,
                width: 356.w,
                decoration: BoxDecoration(
                    // ignore: use_full_hex_values_for_flutter_colors
                    border:
                        Border.all(color: const Color(0xff2b67a329), width: 1),
                    boxShadow: const [
                      BoxShadow(
                          // ignore: use_full_hex_values_for_flutter_colors
                          color: Color.fromRGBO(113, 154, 195, 0.16),
                          blurRadius: 0,
                          offset: Offset(0, 4))
                    ],
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                // color: Colors.white,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 64.h,
                        width: 64.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(items.profilePicture))),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 11.h, left: 12.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                items.name.toString(),
                                style: TextStyle(
                                    fontFamily: 'Helvetica',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                    color: const Color(0xff2B67A3)),
                              ),
                              SizedBox(height: 7.h),
                              SizedBox(
                                  height: 20.h,
                                  child: Row(
                                    children: [
                                      Text(
                                        instanceRegisterationStepTwo
                                            .selectedValue
                                            .toString(),
                                        style: TextStyle(
                                            fontFamily: 'Helvetica',
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xff485058)),
                                      ),
                                      SizedBox(width: 8.w),
                                      const Icon(
                                        Icons.circle,
                                        size: 4.0,
                                        color: Color(0xff719AC3),
                                      ),
                                      SizedBox(width: 8.w),
                                      Text(
                                        '${items.membersCount} members',
                                        style: TextStyle(
                                            fontFamily: 'Helvetica',
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xff485058)),
                                      )
                                    ],
                                  ))
                            ],
                          )),
                    ])),
          ),
        )
      ],
    );
  }
}
