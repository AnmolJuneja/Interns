import 'package:flutter/material.dart';
import 'package:reelpro/models/view_catchlog.dart';
// import 'package:reelpro/view_models/feed_and_catch_network_request/view_catchlog.dart';
import 'package:get/get.dart';
import 'package:reelpro/view_models/feed_and_catch_network_request/all_catchlog_request.dart';

class ViewCatchlogUI extends StatelessWidget {
  const ViewCatchlogUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewCatchlogApi = Get.put(AddCatchlogApi());
    return Scaffold(
      body: FutureBuilder(
          future: viewCatchlogApi.getfinalCatchlog(),
          builder: (context, snapshot) {
           
              return ListView.builder(
                  itemCount: viewCatchlogApi.getCatchlogList1.length,
                  itemBuilder: (context, index) {
                    return buildList(viewCatchlogApi.getCatchlogList1[index]);
                  });
          }),
    );
  }
}

Widget buildList(ViewCatchlogList viewCatchlogList) {
  return Container(
    child: Image.network(viewCatchlogList.pic!)
  );
}
