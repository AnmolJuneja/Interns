import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:reelpro/models/comment_list.dart';
import 'package:reelpro/models/shared_preferences.dart';

class CommentListApi extends GetxController {
  var likeCount = 0.obs;
  var commentCount = 0.obs;
  var isLiked = false.obs;
  Future<dio.Response> getCommentList(int catchId) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/v1/catchlog/commentslist/$catchId',
          options: dio.Options(headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $authToken'
          }));
      print('Response data ${response.data}');
      return response;
    } on dio.DioError catch (err) {
      print(err.message);
      print(err.response);
    }
    return Future.value();
  }
}
