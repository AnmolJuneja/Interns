import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:reelpro/models/search_user.dart';
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/models/view_profile.dart';

class SearchUserApi  {
  Future<dio.Response> searchUser(String search) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/v1/user/search?page=1&search=$search',
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

  var getUserLength = <ListOfUser>[].obs;
  searchUserFinal(String search) async {
    await searchUser(search).then((value) {
      var resp = SearchUser.fromJson(value.data);
      getUserLength.clear();
      getUserLength.addAll(resp.data);
    });
  }
}
