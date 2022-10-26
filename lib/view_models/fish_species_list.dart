import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:reelpro/models/fish_species_list.dart';
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/view_models/team_list.dart';

class FishSpeciesListApi extends GetxController {
  final teamApi = Get.put(TeamViewApi());
  var color1 = const Color(0xffF2F9FF).obs;
  var color2 = const Color(0xffF2F9FF).obs;
  var color3 = const Color(0xffF2F9FF).obs;
  var color4 = const Color(0xffF2F9FF).obs;
  var spareColor = const Color(0xffF2F9FF).obs;
  var selectedColor = const Color(0xffd6e9ff).obs;
  var selectedColor1 = const Color(0xffd6e9ff).obs;
  var selectedItemcolor = const Color(0xffd6e9ff).obs;
  var isSelected1 = false.obs;
  var isSelected2 = false.obs;
  var isSelected3 = false.obs;
  var isSelected4 = false.obs;
  var finalSelected = ''.obs;
  var color5 = const Color(0xffF2F9FF).obs;
  var color6 = const Color(0xffF2F9FF).obs;
  var color7 = const Color(0xffF2F9FF).obs;
  var color8 = const Color(0xffF2F9FF).obs;
  var color9 = const Color(0xffF2F9FF).obs;
  var color10 = const Color(0xffF2F9FF).obs;
  var color11 = const Color(0xffF2F9FF).obs;
  var color12 = const Color(0xffF2F9FF).obs;
  var transparentColor = const Color(0xffF2F9FF).obs;
  var isSelected5 = false.obs;
  var isSelected6 = false.obs;
  var isSelected7 = false.obs;
  var isSelected8 = false.obs;
  var isSelected9 = false.obs;
  var isSelected10 = false.obs;
  var isSelected11 = false.obs;
  var isSelected12 = false.obs;
  var selectedFish = ''.obs;
  Future<dio.Response> getFishSpecies() async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/fish-species-list',
          options: dio.Options(headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $authToken'
          }));
      print('Response data ${response.data}');
      return response;
    } on dio.DioError catch (err) {
      print(err.message);
      print(err.response);
    }
    return Future.value();
  }

  var getList = <FishSpeciesList>[];
  getList1() async {
    await getFishSpecies().then((value) {
      var resp = FishSpeciesListRespone.fromJson(value.data);
      getList.clear();
      getList.addAll(resp.data);
    });
  }
}
