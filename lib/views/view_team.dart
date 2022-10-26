
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reelpro/consts/appbar.dart';
import 'package:reelpro/consts/team_view.dart';
// import 'package:reelpro/models/create_team.dart';
import 'package:reelpro/models/view_team.dart';
import 'package:reelpro/view_models/view_team.dart';
import 'package:reelpro/views/team_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewTeam extends StatelessWidget {
  const ViewTeam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final viewTeam = Get.put(TeamViewViewModel());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
           WhiteAppB(
                          title: 'Giant Trevally',
                          firstIcon: Icons.arrow_back_ios,
                          ontap: () {
                            Get.to(const TeamViewView());
                          },
                          secondIcon: Icons.more_vert,
                          ontap1: () {}),
         FutureBuilder<TeamViewModel>(
          future: viewTeam.getTeam(),
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              return
                 Expanded(
                   child: Container(height: 920.h, color:const Color(0xffF2F9FF),
                     child: SingleChildScrollView(
                          
                            child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                            UpperView(
                              image: snapshot.data!.data!.profilePicture,
                              location: snapshot.data!.data!.address.toString(),
                              post: '20',
                              members: '2',
                              pendingRequests: '0',
                              btn1Text: 'Info',
                              btn2Text: 'Edit/Request to Join',
                              onpressed: () {},
                            ),
                                              TeamViewColumn(
                                  title: 'Group Feeds',
                                  image: 'assets/images/fornewdesigner.png',
                                  text: 'Edward Clark',
                                  text1: 'Wed, 12 January',
                                  text2: '9:00 AM',
                                  text3: "This year's Texas Fly Fishing & Brew Festival is held inside the spacious Mesquite co...",
                                  image1: 'assets/images/9.png', image2: 'assets/images/for designer.png',image3: 'assets/images/fish.png',image4: 'assets/images/for designer.png',
                                  textLike: 'John, Enna and 82 others',
                                  likeImage: 'assets/images/Group 205.png',
                                  likeText: '84',
                                  commentImage: 'assets/images/Group 206.png',
                                  commentText: '12',
                                  shareImage: 'assets/images/Group 207.png',
                                ),
                                                ],
                                              ),
                          )
                                 
                   ),
                 );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          })),
      ],)
    );
  }
}
