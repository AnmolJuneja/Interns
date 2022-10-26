import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'package:reelpro/model/login.dart';
class VerifyOtp extends GetxController {
  Future<dio.Response> verifyOtp(String otp, String confirmationToken) async {
    try {
      dio.Response response;
      response = await dio.Dio().post(
          'https://reelpro.yatilabs.com/api/login-step-two',
          data: {'otp': otp, 'confirmation_token': confirmationToken},
          options: dio.Options(responseType: dio.ResponseType.json, headers: {
            'Accept': 'application/json',
          }));
      // ignore: avoid_print
      print("Response Data  ${response.data['message']}");
      Get.snackbar('', response.data['message'],
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.only(bottom: 20.h));
      return response;
    } on dio.DioError catch (err) {
      print(err.message);
      print(err.response);
      print(err.toString());
      Get.snackbar('error', err.response!.data['error']);
    }
    // ignore: null_argument_to_non_null_type
    return Future.value();
  }
}
