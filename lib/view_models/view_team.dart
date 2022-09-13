import 'dart:convert';

import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/models/view_team.dart';
import 'package:reelpro/views/team_list.dart';
import 'package:reelpro/views/view_team.dart';

class TeamViewViewModel extends GetxController {
  Future<dio.Response> getTeamDetails() async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/v1/team/view/122',
          options: dio.Options(responseType: dio.ResponseType.json, headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $authToken'
          }));
      print('Response data ${response.data}');
      return response;
    } on dio.DioError catch (err) {
      print(err.response);
      print(err.message);
    }
    return Future.value();
  }
}
