import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'dart:io';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/models/feed_comment_list.dart';
import 'package:reelpro/models/feed_like_list.dart';
import 'package:reelpro/models/feed_list.dart';
import 'package:reelpro/models/my_feed_list.dart';
import 'package:reelpro/models/shared_preferences.dart';

class AddFeedApi {
  var userId;
  Future<dio.Response> addFeed(String location, double lat, double lng,
      String description, int viewStatus, List<File> images) async {
    String authToken = await SharedPreferences1().getToken();
    dio.FormData data = dio.FormData.fromMap({
      'location': location,
      'lng': lng,
      'lat': lat,
      'description': description,
      'view_status': viewStatus,
    });
    for (int i = 0; i < images.length; i++) {
      File imageFile = File(images[i].path);
      String fileName = imageFile.path.split('/').last;
      MapEntry<String, dio.MultipartFile> addFeedImage = MapEntry(
        "images[]",
        await dio.MultipartFile.fromFile(
          imageFile.path,
          filename: fileName,
        ),
      );
      data.files.add(addFeedImage);
    }

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

  Future<dio.Response> getFeedList() async {
    userId = await SaveUserId().getId();
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/v1/feed/listfeed',
          options: dio.Options(headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $authToken'
          }));
      response.data['data'];
      print('Response data: ${response.data}');
      return response;
    } on dio.DioError catch (err) {
      print(err.message);
      print(err.response);
    }
    return Future.value();
  }

  var list1 = <Datum>[].obs;
  var isLoading3 = false.obs;
  getDetails() async {
    isLoading3.value = true;
    await getFeedList().then((value) {
      var resp = FeedListResponse.fromJson(value.data);
      list1.clear();
      list1.addAll(resp.data!.data!);
      isLoading3.value = false;
    });
  }

  Future<dio.Response> getFeedCommentList(int id) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/v1/feed/commentslist/$id',
          options: dio.Options(headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $authToken'
          }));
      print('Response data: ${response.data}');
      return response;
    } on dio.DioError catch (err) {
      print(err.response);
      print(err.message);
    }
    return Future.value();
  }

  var commentList = <FeedCList>[].obs;
  getCommentListFinal(int feedId) async {
    isLoading.value = true;
    await getFeedCommentList(feedId).then((value) {
      var resp = FeedCommentList.fromJson(value.data);
      commentList.clear();
      commentList.addAll(resp.data);
    });
    isLoading.value = false;
  }

  Future<dio.Response> getFeedDetails(int feedId) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/v1/feed/myfeedlist?feed_id=$feedId',
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

  Future<dio.Response> deleteFeedComment(int commentId) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/v1/feed/delete-comment/$commentId',
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

  Future<dio.Response> addCommentFeed(int feedId, String comment) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().post(
          'https://reelpro.yatilabs.com/api/v1/feed/comment',
          data: {'feed_id': feedId, 'comment': comment},
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

  Future<dio.Response> likeFeed(int feedId) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().post(
          'https://reelpro.yatilabs.com/api/v1/feed/likedislike',
          data: {'feed_id': feedId},
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

  Future<dio.Response> deleteFeed(int feedId) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().post(
          'https://reelpro.yatilabs.com/api/v1/feed/deletefeed',
          data: {'feed_id': feedId},
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

  Future<dio.Response> getUserFeedList(int userId) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/v1/feed/myfeedlist?user_id=$userId',
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

  Future<dio.Response> getMyFeedList() async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/v1/feed/myfeedlist',
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

  MyFeedList? myFeedList;
  var isLoading = false.obs;
  var count = false.obs;
  Future<MyFeedList> getMyFeedListFinal() async {
    isLoading.value = true;
    var resp = await getMyFeedList();
    myFeedList = MyFeedList.fromJson(resp.data);
    isLoading.value = false;
    return myFeedList!;
  }

  Future<dio.Response> getLikeList(int feedId) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/v1/feed/likelist/$feedId',
          options: dio.Options(headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $authToken'
          }));
      response.data['data'];
      print('Response data: ${response.data}');
      return response;
    } on dio.DioError catch (err) {
      print(err.message);
      print(err.response);
    }
    return Future.value();
  }

  var list = <FeedLike>[].obs;
  getLikeListFinal(int feedId) async {
    isLoading.value = true;
    await getLikeList(feedId).then((value) {
      var resp = FeedLikeList.fromJson(value.data);
      list.clear();
      list.addAll(resp.data);
    });
    isLoading.value = false;
  }

  FeedLikeList? feedLikeList;
  Future<FeedLikeList> getLikeListFinal1(int feedId) async {
    isLoading.value = true;
    var resp = await getLikeList(feedId);
    feedLikeList = FeedLikeList.fromJson(resp.data);
    isLoading.value = false;
    return feedLikeList!;
  }
}
