import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:reelpro/models/login_step_two.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      // print("Response Data  ${response.data}");
      return response;
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
    }
    // ignore: null_argument_to_non_null_type
    return Future.value();
  }
}
