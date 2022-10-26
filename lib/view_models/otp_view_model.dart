import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpViewModel extends GetxController {
  var countryText = '1'.obs;
  var flagEmoji = ''.obs;
  Future<dio.Response> getOtp(String phoneNumber, String countryCode) async {
    try {
      dio.Response response;
      response = await dio.Dio().post(
          'https://reelpro.yatilabs.com/api/login-step-one',
          data: {
            'phone_number': countryCode + phoneNumber,
          },
          options: dio.Options(responseType: dio.ResponseType.json, headers: {
            'Accept': 'application/json',
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
