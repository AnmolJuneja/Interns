import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:reelpro/consts/appbar.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/controllers/registeration_controllers.dart';
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/view_models/team_and_profile_request/create_team.dart';
// import 'package:reelpro/view_models/register_user_request/registeration_step_two.dart';
// import 'package:reelpro/models/team_view.dart';
// import 'package:reelpro/view_models/team_and_profile_request/team_list.dart';
import 'package:get/get.dart';
import 'package:reelpro/views/team_screens/create_team.dart';
import 'package:reelpro/views/team_screens/edit_team_screen.dart';
import 'package:reelpro/views/family_and_profile_screens/profile_settings.dart';
import 'package:reelpro/views/team_screens/view_team.dart';
import '../../models/team_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeamViewView extends StatefulWidget {
  const TeamViewView({Key? key}) : super(key: key);

  @override
  State<TeamViewView> createState() => _TeamViewViewState();
}

class _TeamViewViewState extends State<TeamViewView> {
  final teamApi = Get.put(CreateTeamApi());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF2F9FF),
        // toolbarHeight: 70.h,
        elevation: 0,
        title: Text21PtBlack(text: 'Manage Teams'),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 36.w),
            child: GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreateTeamView()),
                    (route) => false);
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
            padding: EdgeInsets.only(left: 36.w),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.h),
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
      ),
    );
  }

  Widget buildListTile(TeamList items) {
    final instanceRegisterationStepTwo = Get.put(RegistrationStepTwo2());
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 36.w, left: 36.w),
          child: GestureDetector(
            onTap: () {
              Get.to(() => const ViewTeam());
            },
            child: Container(
                margin: EdgeInsets.only(top: 12.h),
                padding: EdgeInsets.only(top: 14.h, left: 12.w, bottom: 16.h),
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
