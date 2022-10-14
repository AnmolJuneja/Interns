import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:reelpro/models/shared_preferences.dart';

import '../models/event_list.dart';

class EventListApi extends GetxController {
  Future<dio.Response> getEventList() async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/list-event?sortOrder=ASC&pastEvents=1&distance=2000&lat=30.733315&lng=76.779419&per_page=&event_type',
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
   var getList = <EventList>[];
  getList1() async {
    await getEventList().then((value) {
      var resp = EventListResponse.fromJson(value.data);
      getList.clear();
      getList.addAll(resp.data);
    });
  }
   
}
