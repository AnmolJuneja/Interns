import 'dart:io';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reelpro/controllers/registeration_controllers.dart';
import 'package:reelpro/models/followers_list.dart';
import 'package:reelpro/models/shared_preferences.dart';
// import 'package:reelpro/view_models/register_user_request/registeration_step_two.dart';

class Editprofile {
  final instance = Get.put(RegistrationStepTwo2());
  Future<dio.Response> editProfile(
      String firstName,
      String lastName,
      String dob,
      String gender,
      String? description,
      File? profilePic,
      String? email,
      String? number,
      String cardId,
      String customerId,
      String timeZone) async {
    email == instance.email1.value ? email = null : email = email;

    number == instance.number.value ? number = null : number = number;

    description == null ? description = null : description = description;

    String authToken = await SharedPreferences1().getToken();
    dio.FormData data = dio.FormData.fromMap({
      'firstname': firstName,
      'lastname': lastName,
      'dob': dob,
      'gender': gender,
      'description': description,
      'email': email,
      'phone_number': number,
      'card_id': cardId,
      'customer_id': customerId,
      'timezone': timeZone
    });
    if (profilePic != null) {
      String fileName = profilePic.path.split('/').last;
      MapEntry<String, dio.MultipartFile> profileImage = MapEntry(
        "profile_pic",
        await dio.MultipartFile.fromFile(
          profilePic.path,
          filename: fileName,
        ),
      );
      data.files.add(profileImage);
    }
    var gender1 = await Gender().getGender();
    RegistrationStepTwo2().genderF.value = gender1;
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
      Get.snackbar('', response.data['message'],
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.only(bottom: 20.h));
      return response;
    } on dio.DioError catch (err) {
      print(err.message);
      print(err.response);
      Get.snackbar('error', err.response!.data['error'],
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.only(bottom: 20.h));
    }
    return Future.value();
  }

  Future<dio.Response> getFollowersList() async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/following-list',
          options: dio.Options(headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $authToken'
          }));
      print('Response data: ${response.data}');
      return response;
    } on dio.DioError catch (err) {
      print(err.response);
      print(err.message);
    }
    return Future.value();
  }

  FollowersList? followersList;
  var list = <Follower>[].obs;
  var isLoading = false.obs;
  getFollowersListFinal() async {
    isLoading.value = true;
    await getFollowersList().then((value) {
      var resp = FollowersList.fromJson(value.data);
      list.clear();
      list.addAll(resp.data!);
    });

    isLoading.value = false;
  }
}
