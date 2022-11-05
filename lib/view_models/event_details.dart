import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:reelpro/models/event_details.dart';
import 'package:reelpro/models/shared_preferences.dart';

class EventDetailsApi extends GetxController {
  Future<dio.Response> getEventDetails(int eventId) async {
    String authToken = await SharedPreferences1().getToken();
    // int getId = await SharedPreferences2().getId();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/event-detail/$eventId',
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

  EventDetails? eventDetails;
  var isLoading = false.obs;
  Future<EventDetails> getDetails(int eventId) async {
    isLoading.value = true;
    var resp = await EventDetailsApi().getEventDetails(eventId);
    eventDetails = EventDetails.fromJson(resp.data);
    isLoading.value = false;
    return eventDetails!;
  }
}
