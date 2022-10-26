import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:reelpro/models/feed_comment_list.dart';
import 'package:reelpro/models/shared_preferences.dart';

class FeedCommentListApi extends GetxController {
  Future<dio.Response> getFeedCommentList(int id) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/v1/feed/commentslist/$id',
          options: dio.Options(headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $authToken'
          }));
      print('Response data: ${response.data}');
      return response;
    } on dio.DioError catch (err) {
      print(err.response);
      print(err.message);
    }
    return Future.value();
  }
}
