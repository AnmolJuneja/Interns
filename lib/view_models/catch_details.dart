import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:reelpro/models/catch_details.dart';
import 'package:reelpro/models/shared_preferences.dart';

class CatchDetailsApi extends GetxController {
  Future<dio.Response> getCatchDetails() async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get('https://reelpro.yatilabs.com/api/v1/catchlog/catchlog-detail/10',
       options: dio.Options(headers: {
        'Accept':'application/json',
        'Authorization':'Bearer $authToken'
      }));
      print('Response data ${response.data}');
      return response;
    } on dio.DioError catch (err) {
      print(err.message);
      print(err.response);
    }
    return Future.value();
  }
  Future<CatchDetailsModel> getDetails() async {
    var resp = await CatchDetailsApi().getCatchDetails();
    return CatchDetailsModel.fromJson(resp.data);
  }
}
