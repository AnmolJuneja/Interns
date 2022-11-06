import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import 'dart:io';

import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/models/team_list.dart';
import 'package:reelpro/models/view_team.dart';

class CreateTeamApi {
  Future<dio.Response> createTeam(String name, String address, File profilePic,
      double lat, double lng, int visibility, String description) async {
    String authToken = await SharedPreferences1().getToken();
    dio.FormData data = dio.FormData.fromMap({
      'name': name,
      'address': address,
      'lat': lat,
      'lng': lng,
      'visibility': visibility,
      'description': description
    });
    String fileName = profilePic.path.split('/').last;
    MapEntry<String, dio.MultipartFile> profileImage = MapEntry(
        'profile_picture',
        await dio.MultipartFile.fromFile(profilePic.path, filename: fileName));
    data.files.add(profileImage);
    try {
      dio.Response response;
      response = await dio.Dio().post(
          'https://reelpro.yatilabs.com/api/v1/team/create',
          data: data,
          options: dio.Options(headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $authToken'
          }));
      print("Response Data  ${response.data}");
      return response;
    } on dio.DioError catch (err) {
      print(err.message);
      print(err.response);
    }
    return Future.value();
  }

  Future<dio.Response> getTeam() async {
    String authToken = await SharedPreferences1().getToken();

    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/v1/team/my-teams?visibility=&per_page=',
          options: dio.Options(responseType: dio.ResponseType.json, headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $authToken'
          }));
      print("Response Data  ${response.data}");
      return response;
    } on dio.DioError catch (err) {
      print(err.message);
      print(err.response);
    }
    return Future.value();
  }

  var getTeam1 = <TeamList>[].obs;
  getTeam12() async {
    await getTeam().then((value) {
      var resp = TeamListResponse.fromJson(value.data);
      getTeam1.clear();
      getTeam1.addAll(resp.data);
    });
  }

  Future<dio.Response> getTeamDetails() async {
    String authToken = await SharedPreferences1().getToken();
    var id = await SharedPreferences2().getId();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/v1/team/view/$id',
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

  Future<TeamViewModel> getTeamFinal() async {
    var resp = await getTeamDetails();
    return TeamViewModel.fromJson(resp.data);
  }
}
