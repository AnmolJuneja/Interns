import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/small_container.dart';
import 'package:reelpro/consts/text.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:reelpro/views/family_and_profile_screens/manage_family.dart';

class FamilyMembersListUI extends StatelessWidget {
  const FamilyMembersListUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F9FF),
      appBar: AppBar(
        // toolbarHeight: 70.h,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 30.w),
            child: GestureDetector(
              onTap: () {
                Get.to(() => const ManageFamilyUI());
              },
              child: const Icon(
                Icons.add,
                color: Colors.black,
                size: 25,
              ),
            ),
          )
        ],
        centerTitle: true,
        title: Text21PtBlack(text: 'Manage Family'),
        leading: Padding(
          padding: EdgeInsets.only(left: 36.w),
          child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios, color: Colors.black)),
        ),
        elevation: 0,
        backgroundColor: const Color(0xffF2F9FF),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 36.w, right: 36.w),
        child: Column(children: [
          Slidable(
            endActionPane: ActionPane(
              motion: const StretchMotion(),
              children: [
                SlidableAction(
                  onPressed: ((context) {}),
                  backgroundColor: const Color(0xffF2F9FF),
                  icon: Icons.edit_outlined,
                  foregroundColor: const Color(0xff2B67A3),
                ),
                SlidableAction(
                  onPressed: ((context) {}),
                  backgroundColor: const Color(0xffF2F9FF),
                  icon: Icons.delete_outline_outlined,
                  foregroundColor: Colors.red,
                )
              ],
            ),
            child: const ContainerManageFamilyList(),
          ),
          SizedBox(height: 12.h),
          Slidable(
            endActionPane: ActionPane(
              motion: const StretchMotion(),
              children: [
                SlidableAction(
                  onPressed: ((context) {}),
                  backgroundColor: const Color(0xffF2F9FF),
                  icon: Icons.edit_outlined,
                  foregroundColor: const Color(0xff2B67A3),
                ),
                SlidableAction(
                  onPressed: ((context) {}),
                  backgroundColor: const Color(0xffF2F9FF),
                  icon: Icons.delete_outline_outlined,
                  foregroundColor: Colors.red,
                )
              ],
            ),
            child: const ContainerManageFamilyList(),
          ),
          SizedBox(height: 12.h),
          Slidable(
            endActionPane: ActionPane(
              motion: const StretchMotion(),
              children: [
                SlidableAction(
                  onPressed: ((context) {}),
                  backgroundColor: const Color(0xffF2F9FF),
                  icon: Icons.edit_outlined,
                  foregroundColor: const Color(0xff2B67A3),
                ),
                SlidableAction(
                  onPressed: ((context) {}),
                  backgroundColor: const Color(0xffF2F9FF),
                  icon: Icons.delete_outline_outlined,
                  foregroundColor: Colors.red,
                )
              ],
            ),
            child: const ContainerManageFamilyList(),
          ),
          SizedBox(height: 12.h),
          Slidable(
            endActionPane: ActionPane(
              motion: const StretchMotion(),
              children: [
                SlidableAction(
                  onPressed: ((context) {}),
                  backgroundColor: const Color(0xffF2F9FF),
                  icon: Icons.edit_outlined,
                  foregroundColor: const Color(0xff2B67A3),
                ),
                SlidableAction(
                  onPressed: ((context) {}),
                  backgroundColor: const Color(0xffF2F9FF),
                  icon: Icons.delete_outline_outlined,
                  foregroundColor: Colors.red,
                )
              ],
            ),
            child: const ContainerManageFamilyList(),
          ),
        ]),
      ),
    );
  }
}
