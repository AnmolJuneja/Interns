import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:reelpro/models/catch_details.dart';
import 'package:reelpro/models/feed_details.dart';
import 'package:reelpro/models/feed_list.dart';
import 'package:reelpro/models/shared_preferences.dart';

class FeedDetailsApi extends GetxController {
  var isLiked = false.obs;
  var likeCount = 0.obs;
  var commentCount = 0.obs;
  Future<dio.Response> getFeedDetails(int feedId) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/v1/feed/myfeedlist?feed_id=$feedId',
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
