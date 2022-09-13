import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import 'dart:io';

import 'package:reelpro/models/shared_preferences.dart';

class CreateTeamApi extends GetxController {
  Future<dio.Response> createTeam(String name, String address, File profilePic,
      double lat, double lng, String visibility, String description) async {
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
      response = await dio.Dio()
          .post('https://reelpro.yatilabs.com/api/v1/team/create', data: data ,  options: dio.Options(headers: {
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
}
