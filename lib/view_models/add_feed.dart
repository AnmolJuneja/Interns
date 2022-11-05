import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'dart:io';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/models/shared_preferences.dart';

class AddFeedApi extends GetxController {
  var color1 = const Color(0xffF2F9FF).obs;
  var color2 = const Color(0xffF2F9FF).obs;
  var color3 = const Color(0xffF2F9FF).obs;
  var spareColor = const Color(0xffF2F9FF).obs;
  var isSelected1 = false.obs;
  var isSelected2 = false.obs;
  var isSelected3 = false.obs;
  var selectedColor = const Color(0xffd6e9ff).obs;
  var selectedItem = ''.obs;
  Future<dio.Response> addFeed(String location, double lat, double lng,
      String description, int viewStatus, File images) async {
    String authToken = await SharedPreferences1().getToken();
    dio.FormData data = dio.FormData.fromMap({
      'location': location,
      'lng': lng,
      'lat': lat,
      'description': description,
      'view_status': viewStatus,
      });
       File imageFile = File(images.path);
        String fileName = imageFile.path.split('/').last;
        MapEntry<String, dio.MultipartFile> addFeedImage = MapEntry(
          "images[]",
          await dio.MultipartFile.fromFile(
            imageFile.path,
            filename: fileName,
          ),
        );
        data.files.add(addFeedImage);
         try {
      dio.Response response;
      response = await dio.Dio().post(
          'https://reelpro.yatilabs.com/api/v1/feed/addfeed',
          data: data,
          options: dio.Options(headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $authToken'
          }));
      print('Response data ${response.data}');
      Get.snackbar('', response.data['message'],
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.only(bottom: 20.h));
      return response;
    } on dio.DioError catch (err) {
      print(err.message);
      print(err.response);
      Get.snackbar('error', err.response!.data['error'],
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.only(bottom: 20.h));
    }
    return Future.value();
  }
}
      
   
   
