import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:reelpro/models/event_order_list.dart';
import 'package:reelpro/models/my_feed_list.dart';
import 'package:reelpro/models/shared_preferences.dart';

class EventOrderListApi extends GetxController {

  Future<dio.Response> getOrderList() async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/v1/order/members-list?pastEvents=1&upcoming=1',
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
