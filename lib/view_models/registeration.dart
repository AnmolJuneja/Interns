import 'package:reelpro/models/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterationViewModel extends GetxController {

  Future<dio.Response> registerUser(
      String dob,
      String email,
      String gender,
      String firstname,
      String lastname,
      double lat,
      double lng,
      String authToken) async {
    var authToken = await SharedPreferences1().getToken();
  
    try {
      dio.Response response;
      response = await dio.Dio().post(
          'https://reelpro.yatilabs.com/api/register-profile-step-one',
          data: {
            'firstname': firstname,
            'lastname': lastname,
            'email': email,
            'dob': dob,
            'gender': gender,
            'lat': lat,
            'lng': lng,
          },
          options: dio.Options(responseType: dio.ResponseType.json, headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $authToken'
          }));
      // ignore: avoid_print
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
    // ignore: null_argument_to_non_null_type
    return Future.value();
  }
}
