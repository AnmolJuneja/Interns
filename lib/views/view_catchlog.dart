import 'package:flutter/material.dart';
import 'package:reelpro/models/view_catchlog.dart';
import 'package:reelpro/view_models/view_catchlog.dart';
import 'package:get/get.dart';

class ViewCatchlogUI extends StatelessWidget {
  const ViewCatchlogUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ViewCatchlogApi viewCatchlogApi = Get.put(ViewCatchlogApi());
    return Scaffold(
      body: FutureBuilder(
          future: viewCatchlogApi.getfinalCatchlog(),
          builder: (context, snapshot) {
           
              return ListView.builder(
                  itemCount: viewCatchlogApi.getCatchlogList.length,
                  itemBuilder: (context, index) {
                    return buildList(viewCatchlogApi.getCatchlogList[index]);
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
