import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:reelpro/models/catchlog_list.dart';
import 'package:reelpro/models/shared_preferences.dart';

class CatchlogListApi extends GetxController {
  Future<dio.Response> getCatchlogList(int catchtype) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().post(
          'https://reelpro.yatilabs.com/api/v1/catchlog/all-catchlog-list',data: {
            'catchtype':catchtype
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

  var catchlogList = <CatchlogList>[];
  getList1() async {
    await getCatchlogList(1).then((value) {
      var resp = CatchlogListResponse.fromJson(value.data);
      catchlogList.clear();
      catchlogList.addAll(resp.data);
    });
  }
}
