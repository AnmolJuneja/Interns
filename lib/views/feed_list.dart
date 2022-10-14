import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reelpro/models/feed_list.dart';
import 'package:reelpro/view_models/feed_list.dart';

class FeedListUI extends StatefulWidget {
  const FeedListUI({Key? key}) : super(key: key);

  @override
  State<FeedListUI> createState() => _FeedListUIState();
}

class _FeedListUIState extends State<FeedListUI> {
  final feedListInstance = Get.put(FeedListApi());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: feedListInstance.getFeedListFinal(),
            builder: (context, snapshot) {
              return ListView.builder(
                  itemCount: feedListInstance.feedListVar.length,
                  itemBuilder: (context, index) {
                    return buildList(feedListInstance.feedListVar[index]);
                  });
            }));
  }
}

Widget buildList(FeedList feedList) {
  return Center(
    child: Container(child: Text(feedList.lat.toString())));
}
