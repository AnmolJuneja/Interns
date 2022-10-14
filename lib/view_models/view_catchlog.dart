import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/models/view_catchlog.dart';

class ViewCatchlogApi extends GetxController {
  Future<dio.Response> viewCatchlogList(int catchType ) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().post('https://reelpro.yatilabs.com/api/v1/catchlog/view-catchlog-list',
          data: {'catchtype': catchType,
          },
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

  var getCatchlogList = <ViewCatchlogList>[].obs;
  getfinalCatchlog() async {
    await viewCatchlogList(2).then((value){
      var resp = ViewCatchlogResponse.fromJson(value.data);
      getCatchlogList.clear();
      getCatchlogList.addAll(resp.data);
    });
  }
}
