import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:reelpro/models/feed_list.dart';
import 'package:reelpro/models/shared_preferences.dart';

class FeedListApi extends GetxController {
  Future<dio.Response> getFeedList() async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/v1/feed/listfeed',
          options: dio.Options(headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $authToken'
          }));
      response.data['data'];
      print('Response data: ${response.data}');
      return response;
    } on dio.DioError catch (err) {
      print(err.message);
      print(err.response);
    }
    return Future.value();
  }

  var feedListVar = <SingleFeedResponse>[];
  getFeedListFinal() async {
    await getFeedList().then((value) {
      var resp = FeedListResponse.fromJson(value.data['data']);
      feedListVar.clear();
      feedListVar.addAll(resp.data);
    });
  }
}
