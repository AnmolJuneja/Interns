import 'package:flutter/material.dart';
import 'package:reelpro/consts/container.dart';
import 'package:reelpro/consts/text.dart';
import 'package:reelpro/controllers/feed_and_catch_controllers.dart';
import 'package:reelpro/models/catchlog_list_response.dart';
import 'package:reelpro/models/feed_like_list.dart';
import 'package:reelpro/models/feed_list.dart';
import 'package:reelpro/view_models/feed_and_catch_network_request/all_catchlog_request.dart';
import 'package:reelpro/view_models/feed_and_catch_network_request/all_feed_request.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/views/catch_and_feed_screens/add_catch_log.dart';
import 'package:reelpro/views/catch_and_feed_screens/add_feed.dart';
import 'package:reelpro/views/bottom_navigation_screens/bottom_navigation.dart';
import 'package:reelpro/views/catch_and_feed_screens/catch_details.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reelpro/views/catch_and_feed_screens/feed_details.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:intl/intl.dart';

class CatchlogListUI extends StatefulWidget {
  const CatchlogListUI({Key? key}) : super(key: key);

  @override
  State<CatchlogListUI> createState() => _CatchlogListUIState();
}

class _CatchlogListUIState extends State<CatchlogListUI> {
  PageController pageController = PageController(viewportFraction: 0.9);
  PageController pageController1 = PageController(viewportFraction: 0.9);
  final instance1 = Get.put(AddFeedApi1());
  final instance = Get.put(AddFeedApi());
  var isLiked = false.obs;
  var likeCount = 0.obs;
  var commentCount = 0.obs;
  var userId;
  @override
  void initState() {
    instance1.getList1();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF2F9FF),
        elevation: 0,
        centerTitle: false,
        title: Padding(
            padding: EdgeInsets.only(top: 26.h, bottom: 20.h, left: 24.w),
            child: Text30ptBlue(text: 'Tracker')),
      ),
      backgroundColor: const Color(0xffF2F9FF),
      body: SizedBox(
        height: 1200.h,
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(left: 36.w, right: 36.w, top: 24.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BottomNavigation(currentIndex: 3)));
                            },
                            child: Container100_88(
                                image: 'assets/images/Group 202.png',
                                text: 'Events'),
                          ),
                          Container100_88(
                              image: 'assets/images/Group 203.png',
                              text: 'Caught'),
                          Container100_88w(
                              image: 'assets/images/Group 204.png',
                              text: 'Top weight')
                        ]),
                    SizedBox(height: 40.h),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text21PtBlue(text: 'My Feeds'),
                          GestureDetector(
                            onTap: () {
                              Get.to(const AddFeedConst());
                            },
                            child: const Icon(
                              Icons.add,
                              size: 30.0,
                              color: Color(0xff2B67A3),
                            ),
                          )
                        ]),
                    SizedBox(height: 20.h),
                  ]),
            ),
            SizedBox(
              height: 439.h,
              child: FutureBuilder<FeedListResponse>(
                  future: instance.getDetails(),
                  builder: (contex, snapshot) {
                    if (snapshot.hasData) {
                      return snapshot.data!.data!.data!.isNotEmpty
                          ? PageView.builder(
                              controller: pageController1,
                              itemCount: snapshot.data!.data!.data!.length,
                              itemBuilder: (context, index) {
                                return buildFeed(
                                  context,
                                  snapshot.data!.data!.data![index],
                                );
                              })
                          : Center(child: Text16PtBlack(text: 'No Feed Data'));
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(left: 36.w, top: 40.h, right: 36.w),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text21PtBlue(text: 'Catch Log'),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const AddCatchLogUI());
                      },
                      child: const Icon(
                        Icons.add,
                        size: 30.0,
                        color: Color(0xff2B67A3),
                      ),
                    )
                  ]),
            ),
            SizedBox(height: 20.h),
            SizedBox(
                height: 439.h,
                child: Obx(() => instance1.isLoading.value
                    ? const Center(child: CircularProgressIndicator())
                    : Obx(() => instance1.catchlogList.isEmpty
                        ? Center(
                            child: Text16PtBlack(
                            text: 'No Catchlog Data',
                          ))
                        : PageView.builder(
                            controller: pageController,
                            itemCount: instance1.catchlogList.length,
                            itemBuilder: (context, index) {
                              return buildList(instance1.catchlogList[index]);
                            })))),
            SizedBox(height: 15.h)
          ]),
        ),
      ),
    );
  }
}

Widget buildList(CatchlogList catchlogList) {
  final likeCatchlogApi = Get.put(AddCatchlogApi());
  var isLiked = false.obs;
  var likeCount = 0.obs;
  var commentCount = 0.obs;
  isLiked.value = catchlogList.isLiked!;
  likeCount.value = catchlogList.totalLikes!;
  commentCount.value = catchlogList.totalComments!;
  PageController pageController = PageController();
  return GestureDetector(
    onTap: () {
      Get.to(CatchDetailsUI(catchId: catchlogList.id!.toInt()));
    },
    child: Container(
        height: 439.h,
        width: 356.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        margin: EdgeInsets.only(left: 10.w, right: 12.w),
        child: Stack(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.only(top: 16.h, left: 12.w),
                child: Row(
                  children: [
                    catchlogList.userDetail!.profilePic == null
                        ? ProfilePicContainer(
                            image:
                                const AssetImage('assets/images/profile.png'))
                        : ProfilePicContainer(
                            image: NetworkImage(
                                catchlogList.userDetail!.profilePic!)),
                    SizedBox(width: 12.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text20PtBlue(
                            text:
                                '${catchlogList.userDetail!.firstname} ${catchlogList.userDetail!.lastname}'),
                        SizedBox(height: 7.h),
                        Row(
                          children: [
                            SvgPicture.asset('assets/images/date.svg'),
                            SizedBox(width: 6.w),
                            Text14PtTime(text: 'Mon, 12 September'),
                            SizedBox(width: 10.w),
                            SvgPicture.asset('assets/images/Subtraction 1.svg'),
                            SizedBox(width: 6.w),
                            Text14PtTime(text: '9:37 AM')
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 65.h,
                padding: EdgeInsets.only(top: 22.h, left: 12.w),
                child: Text16PtDesc(text: catchlogList.comment.toString()),
              ),
              SizedBox(height: 8.h),
              SizedBox(
                  height: 179.h,
                  width: double.infinity,
                  child: catchlogList.pic!.isEmpty
                      ? Padding(
                          padding: EdgeInsets.only(top: 60.h),
                          child: Column(
                            children: [
                              const Icon(Icons.error, color: Colors.black),
                              SizedBox(height: 10.h),
                              Text16PtBlack(text: 'No Image Available')
                            ],
                          ),
                        )
                      : SizedBox(
                          width: double.infinity,
                          child: Image(
                              fit: BoxFit.fitWidth,
                              image: NetworkImage(catchlogList.pic!)),
                        )),
              SizedBox(height: 45.h),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w),
                child: Row(
                  children: [
                    Obx(() => LikeIcon(
                        onTap: () {
                          isLiked.value = true;
                          likeCount.value++;
                          likeCatchlogApi
                              .likeCatchlog(catchlogList.id!.toInt());
                        },
                        onTap1: () {
                          likeCount.value--;
                          isLiked.value = false;
                          likeCatchlogApi
                              .likeCatchlog(catchlogList.id!.toInt());
                        },
                        isliked: isLiked.value)),
                    SizedBox(width: 8.w),
                    Obx(() => Text14PtBlue(text: likeCount.value.toString())),
                    SizedBox(width: 44.w),
                    const CommentIcon(),
                    SizedBox(width: 8.w),
                    Text14ptDesc(text: '${catchlogList.totalComments}'),
                    SizedBox(width: 112.w),
                    Image.asset('assets/images/Group 207.png',
                        height: 40.h, width: 40.w)
                  ],
                ),
              ),
              // Spacer()
            ]),
            Positioned(
                top: 28.h, left: 318.w, child: const Icon(Icons.more_horiz)),
          ],
        )),
  );
}

Widget buildFeed(BuildContext context, Datum datum) {
  PageController pageController = PageController();
  final likeFeed = Get.put(AddFeedApi());
  var isLiked = false.obs;
  var likeCount = 0.obs;
  var commentCount = 0.obs;
  isLiked.value = datum.isLiked!;
  likeCount.value = datum.totalLikes!;
  commentCount.value = datum.totalComments!;
  final local = DateFormat.E().format(datum.createdAt!);
  final local2 = DateFormat.MMM().format(datum.createdAt!);
  final local1 = datum.createdAt!.toLocal();
  final local3 = DateFormat('hh:mm a').format(datum.createdAt!);
  var oc = datum.totalLikes;
  var oc1 = oc! - 3;
  FeedLike element;
  return GestureDetector(
      onTap: () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) => FeedDetailsUI(feedId: datum.id!)),
            (route) => false);
      },
      child: datum.getFeedImages!.isEmpty
          ? Center(child: Text16PtBlack(text: 'No Feed Data'))
          : Container(
              height: 439.h,
              width: 356.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(left: 10.w, right: 12.w),
              child: Stack(children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16.h, left: 10.w),
                    child: Row(
                      children: [
                        datum.feedUserInfo!.profilePic != null
                            ? ProfilePicContainer(
                                image: NetworkImage(
                                    datum.feedUserInfo!.profilePic!))
                            : ProfilePicContainer(
                                image: const AssetImage(
                                    'assets/images/profile.png')),
                        SizedBox(width: 12.w),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text20PtBlue(
                                  text:
                                      '${datum.feedUserInfo!.firstname} ${datum.feedUserInfo!.lastname}'),
                              SizedBox(height: 7.h),
                              Row(children: [
                                SvgPicture.asset('assets/images/date.svg'),
                                SizedBox(width: 6.w),
                                Text14PtTime(
                                    text: '$local, ${local1.day} $local2'),
                                SizedBox(width: 10.w),
                                SvgPicture.asset(
                                    'assets/images/Subtraction 1.svg'),
                                SizedBox(width: 6.w),
                                Text14PtTime(text: local3)
                              ])
                            ])
                      ],
                    ),
                  ),
                  Container(
                    height: 65.h,
                    padding: EdgeInsets.only(top: 22.h, left: 12.w),
                    child: Text16PtDesc(text: datum.description.toString()),
                  ),
                  SizedBox(height: 8.h),
                  SizedBox(
                      height: 179.h,
                      width: double.infinity,
                      child: datum.getFeedImages!.isEmpty
                          ? Padding(
                              padding: EdgeInsets.only(top: 60.h),
                              child: Column(
                                children: [
                                  const Icon(Icons.error, color: Colors.black),
                                  SizedBox(height: 10.h),
                                  Text16PtBlack(text: 'No Image Available')
                                ],
                              ),
                            )
                          : PageView.builder(
                              controller: pageController,
                              itemCount: datum.getFeedImages!.length,
                              itemBuilder: (context, index) {
                                return SizedBox(
                                  width: double.infinity,
                                  child: Image(
                                      fit: BoxFit.fitWidth,
                                      image: NetworkImage(
                                          datum.getFeedImages![index].pic!)),
                                );
                              })),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 16.w, right: 16.w, top: 55.h),
                    child: Row(
                      children: [
                        Obx(() => LikeIcon(
                            onTap: () {
                              likeFeed.likeFeed(datum.id!.toInt());
                              isLiked.value = true;
                              likeCount.value++;
                              likeFeed.getLikeListFinal(datum.id!);
                            },
                            onTap1: () {
                              likeCount.value--;
                              isLiked.value = false;
                              likeFeed.likeFeed(datum.id!.toInt());
                              likeFeed.getLikeListFinal(datum.id!);
                            },
                            isliked: isLiked.value)),
                        SizedBox(width: 8.w),
                        Obx(() =>
                            Text14PtBlue(text: likeCount.value.toString())),
                        SizedBox(width: 44.w),
                        const CommentIcon(),
                        SizedBox(width: 8.w),
                        Text14ptDesc(text: '${datum.totalComments}'),
                        SizedBox(width: 125.w),
                        Image.asset('assets/images/Group 207.png',
                            height: 40.h, width: 40.w)
                      ],
                    ),
                  ),
                ]),
                Positioned(
                    top: 28.h,
                    left: 318.w,
                    child: GestureDetector(
                        onTap: () {
                          Get.bottomSheet(Container(
                            padding: EdgeInsets.only(
                                top: 30.h, left: 36.w, right: 36.w),
                            height: 250.h,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(25)),
                                color: Color(0xffF2F9FF)),
                            child: Column(children: [
                              const Divider(thickness: 1),
                              SizedBox(height: 10.h),
                              likeFeed.userId == datum.userId
                                  ? GestureDetector(
                                      onTap: () {
                                        likeFeed.deleteFeed(datum.id!);
                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    BottomNavigation(
                                                        currentIndex: 0)),
                                            (route) => false);
                                      },
                                      child: Text16PtBlack(text: 'Delete Feed'))
                                  : const SizedBox(),
                              likeFeed.userId == datum.userId
                                  ? SizedBox(height: 10.h)
                                  : const SizedBox(),
                              likeFeed.userId == datum.userId
                                  ? const Divider(thickness: 1)
                                  : const SizedBox(),
                              SizedBox(height: 10.h),
                              Text16PtBlack(text: 'Report Feed'),
                              SizedBox(height: 10.h),
                              const Divider(thickness: 1)
                            ]),
                          ));
                        },
                        child: const Icon(Icons.more_horiz))),
                datum.getFeedImages!.length > 1
                    ? Positioned(
                        top: 307.h,
                        left: 160.w,
                        child: SmoothPageIndicator(
                          effect: SwapEffect(
                            activeDotColor: const Color(0xff2B67A3),
                            dotColor: Colors.grey,
                            dotHeight: 10.h,
                            dotWidth: 10.w,
                          ),
                          controller: pageController,
                          count: datum.getFeedImages!.length,
                        ),
                      )
                    : const SizedBox(),
                Positioned(
                  top: 340.h,
                  left: 18.w,
                  child: FutureBuilder<FeedLikeList>(
                      future: likeFeed.getLikeListFinal(datum.id!),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return datum.totalLikes!.toInt() >= 1
                              ? Row(children: [
                                  Stack(
                                      children: List.generate(
                                          snapshot.data!.data.length == 1
                                              ? 1
                                              : snapshot.data!.data.length == 2
                                                  ? 2
                                                  : 3, (index) {
                                    element = snapshot.data!.data[index];
                                    return element.user!.profilePic == null
                                        ? Container(
                                            padding:
                                                EdgeInsets.only(left: 20.w),
                                            height: 24.h,
                                            width: 24.w,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/profile.png'))),
                                          )
                                        : Container(
                                            margin: EdgeInsets.only(
                                                left: index == 0
                                                    ? 0
                                                    : index == 1
                                                        ? 15
                                                        : 30),
                                            height: 24.h,
                                            width: 24.w,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.white,
                                                    width: 1),
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                    image: NetworkImage(element
                                                        .user!.profilePic!))),
                                          );
                                  })),
                                  SizedBox(width: 5.w),
                                  Row(
                                      children: List.generate(
                                          snapshot.data!.data.length, (index) {
                                    var el = snapshot.data!.data[index];
                                    return index <= 2
                                        ? Padding(
                                            padding: EdgeInsets.only(left: 5.w),
                                            child: Text14PtGrey(
                                                text: '${el.user!.firstname},'),
                                          )
                                        : const SizedBox();
                                  })),
                                  SizedBox(width: 8.w),
                                  snapshot.data!.data.length > 3
                                      ? Text14PtGrey(text: 'And $oc1 others')
                                      : const SizedBox()
                                ])
                              : const SizedBox();
                        } else {
                          return const SizedBox();
                        }
                      }),
                ),
              ])));
}

Widget buildLike(FeedLike data) {
  return Row(children: [
    Container(
      height: 24.h,
      width: 24.w,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(data.user!.profilePic!),
          )),
    ),
  ]);
}
