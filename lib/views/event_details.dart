import 'package:flutter/material.dart';
import 'package:reelpro/consts/appbar.dart';
import 'package:reelpro/consts/button.dart';
import 'package:reelpro/consts/event_details.dart';
import 'package:reelpro/models/event_details.dart';
import 'package:reelpro/view_models/event_details.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventDetailsUI extends StatelessWidget {
  const EventDetailsUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F9FF),
        body:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           AppB(
                    title: 'Tuff Man Series',
                    firstIcon: Icons.arrow_back_ios,
                    ontap: () {},
                    ontap1: () {}),
          SizedBox(
              height: 700.h,width: 428.w,
              child: SingleChildScrollView(
                child: Column(
                    children: [SizedBox(height: 10.h),
                      
                      FutureBuilder<EventDetails>(
                future: EventDetailsApi().getDetails(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(children: [
                    EventDetailsConst(image: snapshot.data!.data!.banner, text15: '12', text2: 'Days', text16: '19', text17: 'Hours', text18: 'Team event',), 
                    EventDetailsRow(image: 'assets/images/Icon open-location.png', text: snapshot.data!.data!.address.toString(), 
                    image1: 'assets/images/Icon-Outline-map.png', text1: 'Get directions', image2: 'assets/images/Icon-Fill-person.png',
                    text2: snapshot.data!.data!.teamSizeMin.toString(), text4: snapshot.data!.data!.teamSizeMax.toString(),
                    text5: ' (team size)',text6: 'Starts on',imagedate: 'assets/images/Icon material-date-range.png',
                    text7: ' Mon, 19 September',imagetime: 'assets/images/Subtraction 1.png',text8: '8:07 AM',
                    text9: 'Ends on', text10: '6:00 PM', text11: 'About Event',text12: snapshot.data!.data!.about.toString(),
                    text13: 'More',
                    )  , 
                   
                    ]);
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
                      ) , 
                      
                    ],
                  ),
              ),
            ),
            SizedBox(height: 20.h) , Padding(
              padding: EdgeInsets.only(left: 36.w),
              child:Row(children: [
                 MyButton1(onpressed: (){}, buttonText: "\$550  |  Register", ) , SizedBox(width: 20.w) , 
                 const Image(image: AssetImage('assets/images/Group 210.png'))
              ],))
           
        ],),
       
         );
  }
}
