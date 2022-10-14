import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:reelpro/models/event_details.dart';
import 'package:reelpro/models/shared_preferences.dart';

class EventDetailsApi extends GetxController {
  Future<dio.Response> getEventDetails() async {
    String authToken = await SharedPreferences1().getToken();
    // int getId = await SharedPreferences2().getId();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/event-detail/52',
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

  Future<EventDetails> getDetails() async {
    var resp = await EventDetailsApi().getEventDetails();
    return EventDetails.fromJson(resp.data);
  }
}
