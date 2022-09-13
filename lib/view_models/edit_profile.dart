import 'dart:io';

import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import 'package:reelpro/models/shared_preferences.dart';

class Editprofile extends GetxController {
  Future<dio.Response> editProfile(String firstName, String lastName,
      String dob, String gender, String description, File profilePic, String email) async {
          String authToken = await SharedPreferences1().getToken();
    dio.FormData data = dio.FormData.fromMap({
      'firstname': firstName,
      'lastname': lastName,
      'dob': dob,
      'gender': gender,
      'description': description,
      'email':email
    });
    String fileName = profilePic.path.split('/').last;
    MapEntry<String, dio.MultipartFile> profileImage = MapEntry(
      "profile_pic",
      await dio.MultipartFile.fromFile(
        profilePic.path,
        filename: fileName,
      ),
    );
    data.files.add(profileImage);

    try {
      dio.Response response;
      response = await dio.Dio().post(
          'https://reelpro.yatilabs.com/api/edit-profile',
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
}
