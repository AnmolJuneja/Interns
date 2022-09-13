import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:network_handler/network_handler.dart';
import 'package:reelpro/models/shared_preferences.dart';

class RegistrationStepTwo2 extends GetxController {
  Future<dio.Response> registersteptwo(
      String fishingType, String shirtSize, String veteran, String club) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().post(
          'https://reelpro.yatilabs.com/api/register-profile-step-two',
          data: {
            'fishing_type': fishingType,
            'shirt_size': shirtSize,
            'veteran': veteran,
            'club': club
          },
          options: dio.Options(headers: {
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
