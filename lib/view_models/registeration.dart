import 'dart:developer';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:reelpro/views/registeration_screen.dart';

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
    // print('$firstname $lastname $email $dob $gender $lat $lng $authToken');
    try {
      dio.Response response;
      // dio.Dio().interceptors.add(dio.LogInterceptor(
      //     requestBody: true, responseBody: true, requestHeader: true));
      // print('$firstname $lastname $gender $dob $email $lat $lng ');
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

      return response;
    } on dio.DioError catch (err) {
      print(err.message);
      print(err.response);
    }
    // ignore: null_argument_to_non_null_type
    return Future.value();
  }
}
