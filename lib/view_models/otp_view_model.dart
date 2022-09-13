import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;

class OtpViewModel extends GetxController {
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
      // return response;
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
    }
    // ignore: null_argument_to_non_null_type
    return Future.value();
  }
}
