import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/text.dart';

class GalleryUI extends StatelessWidget {
  const GalleryUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F9FF),
      appBar: AppBar(
        backgroundColor: const Color(0xffF2F9FF),
        elevation: 0,
        // toolbarHeight: 70.h,
        centerTitle: true,
        title: Text21PtBlack(text: 'Gallery'),
        leading: Padding(
            padding: EdgeInsets.only(left: 36.w),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            )),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 30.h, left: 36.w, right: 36.w),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: 74.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Center(
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 28.w, right: 28.w, top: 15.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(children: [
                            Text20PtBlack(text: '20'),
                            Text14PtGrey(text: 'Members')
                          ]),
                          Column(children: [
                            Text20PtBlack(text: '990'),
                            Text14PtGrey(text: 'Photos')
                          ]),
                          Column(children: [
                            Text20PtBlack(text: '258'),
                            Text14PtGrey(text: 'Videos')
                          ])
                        ]),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Text16PtBlack(text: 'Members')
            ]),
          ),
          Container(
            height: 80.h,
            padding: EdgeInsets.only(top: 16.h, left: 36.w),
            child: PageView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Row(children: [
                    Container(
                      height: 64.h,
                      width: 64.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff2B67A3)),
                      child: const Center(
                        child: Text(
                          'All',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    SizedBox(width: 5.w),
                    Container(
                      height: 64.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/images/for designer.png'))),
                    ),
                    SizedBox(width: 5.w),
                    Container(
                      height: 64.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/images/for designer.png'))),
                    ),
                    SizedBox(width: 5.w),
                    Container(
                      height: 64.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/images/for designer.png'))),
                    ),
                    SizedBox(width: 5.w),
                    Container(
                      height: 64.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/images/for designer.png'))),
                    ),
                    SizedBox(width: 5.w),
                    Container(
                      height: 64.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/images/for designer.png'))),
                    )
                  ]);
                }),
          ),
          Padding(
              padding: EdgeInsets.only(top: 24.h, left: 36.w, right: 36.w),
              child: GridView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: 10,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 16.w,
                      mainAxisSpacing: 16.h,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Image.asset('assets/images/for.png');
                  }))
        ]),
      ),
      bottomSheet: Container(
        padding:
            EdgeInsets.only(top: 15.h, left: 36.w, right: 36.w, bottom: 15.h),
        height: 90.h,
        width: double.infinity,
        color: const Color(0xffF2F9FF),
        child: MyButton(onpressed: () {}, buttonText: 'Add Tournament Photo'),
      ),
    );
  }
}
