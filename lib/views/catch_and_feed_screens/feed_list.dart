import 'package:flutter/material.dart';
import 'package:reelpro/models/feed_list.dart';
import 'package:reelpro/view_models/feed_and_catch_network_request/all_feed_request.dart';
// import 'package:reelpro/view_models/feed_and_catch_network_request/feed_list.dart';
import 'package:get/get.dart';

class FeedList extends StatelessWidget {
  const FeedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final instance = Get.put(AddFeedApi());
    return Scaffold(
        body: FutureBuilder<FeedListResponse>(
            future: instance.getDetails(),
            builder: (context, snapshot) {
              return ListView.builder(
                  itemCount: snapshot.data!.data!.data!.length,
                  itemBuilder: (context, index) {
                    return buildFeed(snapshot.data!.data!.data![index]);
                  });
            }));
  }
}

Widget buildFeed(Datum datum) {
  return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(width: 2, color: Colors.black)),
      // color: Colors.black,
      height: 400,
      width: double.infinity,
      child: PageView.builder(
          itemCount: datum.getFeedImages!.length,
          itemBuilder: (context, index) {
            return Image.network(datum.getFeedImages![index].pic!);
          }));
}
