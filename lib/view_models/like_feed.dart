import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import 'package:reelpro/models/shared_preferences.dart';

class LikeFeedApi extends GetxController {
  Future<dio.Response> likeFeed(int feedId) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().post(
          'https://reelpro.yatilabs.com/api/v1/feed/likedislike',
          data: {'feed_id': feedId},
          options: dio.Options(headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $authToken'
          }));
      print('Response data: ${response.data}');
      return response;
    } on dio.DioError catch (err) {
      print(err.message);
      print(err.response);
    }
    return Future.value();
  }
}
