import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:reelpro/models/catchlog_list_response.dart';
import 'package:reelpro/models/feed_details.dart';
import 'package:reelpro/view_models/feed_and_catch_network_request/all_catchlog_request.dart';

class AddFeedApi1 {
  var color1 = const Color(0xffF2F9FF).obs;
  var color2 = const Color(0xffF2F9FF).obs;
  var color3 = const Color(0xffF2F9FF).obs;
  var spareColor = const Color(0xffF2F9FF).obs;
  var isSelected1 = false.obs;
  var isSelected2 = false.obs;
  var isSelected3 = false.obs;
  var selectedColor = const Color(0xffd6e9ff).obs;
  var selectedItem = ''.obs;
  var isLiked = false.obs;
  var likeCount = 0.obs;
  var commentCount = 0.obs;
  var likeCount1 = 0.obs;
  var commentCount1 = 0.obs;
  var isLiked1 = false.obs;
  var color11 = const Color(0xffF2F9FF).obs;
  var color22 = const Color(0xffF2F9FF).obs;
  var color33 = const Color(0xffF2F9FF).obs;
  var color4 = const Color(0xffF2F9FF).obs;
  var spareColor1 = const Color(0xffF2F9FF).obs;
  var selectedColor1 = const Color(0xffd6e9ff).obs;
  var selectedColor11 = const Color(0xffd6e9ff).obs;
  var selectedItemcolor = const Color(0xffd6e9ff).obs;
  var selectedItemcolor1 = const Color(0xffd6e9ff).obs;
  var isSelected11 = false.obs;
  var isSelected22 = false.obs;
  var isSelected33 = false.obs;
  var isSelected4 = false.obs;
  var finalSelected = ''.obs;
  var color5 = const Color(0xffF2F9FF).obs;
  var color6 = const Color(0xffF2F9FF).obs;
  var color7 = const Color(0xffF2F9FF).obs;
  var color8 = const Color(0xffF2F9FF).obs;
  var color9 = const Color(0xffF2F9FF).obs;
  var color10 = const Color(0xffF2F9FF).obs;
  var color111 = const Color(0xffF2F9FF).obs;
  var color12 = const Color(0xffF2F9FF).obs;
  var transparentColor = const Color(0xffF2F9FF).obs;
  var transparentColor1 = const Color(0xffF2F9FF).obs;
  var isSelected5 = false.obs;
  var isSelected6 = false.obs;
  var isSelected7 = false.obs;
  var isSelected8 = false.obs;
  var isSelected9 = false.obs;
  var isSelected10 = false.obs;
  var isSelected13 = false.obs;
  var isSelected12 = false.obs;
  var selectedFish = ''.obs;
  FeedDetails? feedDetails;
  var catchlogList = <CatchlogList>[].obs;
  var isLoading = false.obs;
  getList1() async {
    isLoading.value = true;
    await AddCatchlogApi().getCatchlogList(2).then((value) {
      var resp = CatchlogListResponse.fromJson(value.data);
      catchlogList.clear();
      catchlogList.addAll(resp.data);
      isLoading.value = false;
    });
  }
}
