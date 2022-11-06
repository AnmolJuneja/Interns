import 'package:dio/dio.dart' as dio;
import 'package:reelpro/models/shared_preferences.dart';
import '../../models/event_list.dart';

class EventListApi {
  Future<dio.Response> getEventList() async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/list-event?sortOrder=ASC&pastEvents=1&distance=2000&lat=30.733315&lng=76.779419&per_page=&event_type=2',
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

  EventListResponse? eventListResponse;
  Future<EventListResponse> getList1() async {
    var res = await getEventList();
    eventListResponse = EventListResponse.fromJson(res.data);
    return eventListResponse!;
  }

  Future<dio.Response> getEventList2() async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/list-event?sortOrder=ASC&pastEvents=0&distance=2000&lat=30.733315&lng=76.779419&event_type=0',
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

  EventListResponse? eventListResponse2;
  Future<EventListResponse> getList12() async {
    var res = await getEventList2();
    eventListResponse2 = EventListResponse.fromJson(res.data);
    return eventListResponse2!;
  }
}
