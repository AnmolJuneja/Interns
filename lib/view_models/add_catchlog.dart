import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'dart:io';

import 'package:reelpro/models/shared_preferences.dart';

class AddCatchlogApi extends GetxController {
  Future<dio.Response> addCatch(
      int fishType,
      int challenge,
      String location,
      String weight,
      String length,
      File pic,
      int type,
      double lat,
      double lng,
      String bait,
      int userId,
      String comment) async {
    String authToken = await SharedPreferences1().getToken();
    dio.FormData data = dio.FormData.fromMap({
      'fishtype': fishType,
      'challenge': challenge,
      'location': location,
      'weight': weight,
      'length': length,
      'type': type,
      'lat': lat,
      'lng': lng,
      'bait': bait,
      'comment': comment,
      'userid': userId
    });
    String fileName = pic.path.split('/').last;
    MapEntry<String, dio.MultipartFile> image = MapEntry(
      "pic",
      await dio.MultipartFile.fromFile(
        pic.path,
        filename: fileName,
      ),
    );
    data.files.add(image);
    try {
      dio.Response response;
      response = await dio.Dio().post(
          'https://reelpro.yatilabs.com/api/v1/catchlog/addcatchlog',
          data: data,
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
}
