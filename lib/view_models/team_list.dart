import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import 'package:reelpro/models/shared_preferences.dart';
// import 'package:reelpro/models/team_view.dart';

import '../models/team_list.dart';

class TeamViewApi extends GetxController {
  Future<dio.Response> getTeam() async {
    String authToken = await SharedPreferences1().getToken();

    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/v1/team/my-teams?visibility=&per_page=',
          options: dio.Options(responseType: dio.ResponseType.json, headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $authToken'
          }));
      print("Response Data  ${response.data}");
      return response;
    } on dio.DioError catch (err) {
      print(err.message);
      print(err.response);
    }
    return Future.value();
  }

  var getTeam1 = <TeamList>[].obs;
  getTeam12() async {
    await TeamViewApi().getTeam().then((value) {
      var resp = TeamListResponse.fromJson(value.data);
      getTeam1.clear();
      getTeam1.addAll(resp.data);
    });
  }
}
