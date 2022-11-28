import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:reelpro/models/catch_details.dart';
import 'package:reelpro/models/catch_like_list.dart';
import 'package:reelpro/models/catchlog_list_response.dart';
import 'package:reelpro/models/comment_list.dart';
import 'package:reelpro/models/fish_species_list.dart';
import 'dart:io';

import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/models/user_catch_list_response.dart';
import 'package:reelpro/models/view_catchlog.dart';

class AddCatchlogApi {
  var userId;
  Future<dio.Response> addCatch(
      int fishType,
      int challenge,
      String location,
      String weight,
      String length,
      List<File>? pic,
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
    for (int i = 0; i < pic!.length; i++) {
      String fileName = pic[i].path.split('/').last;
      MapEntry<String, dio.MultipartFile> image = MapEntry(
        "pic",
        await dio.MultipartFile.fromFile(
          pic[i].path,
          filename: fileName,
        ),
      );
      data.files.add(image);
    }
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

  Future<dio.Response> getCatchDetails(int catchId) async {
    String authToken = await SharedPreferences1().getToken();
    CatchlogList catchlogList = Get.put(CatchlogList());
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/v1/catchlog/catchlog-detail/$catchId',
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

  Future<CatchDetailsModel> getDetails(int catchId) async {
    var resp = await getCatchDetails(catchId);
    return CatchDetailsModel.fromJson(resp.data);
  }

  Future<dio.Response> getCatchlogList(int catchtype) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().post(
          'https://reelpro.yatilabs.com/api/v1/catchlog/all-catchlog-list',
          data: {'catchtype': catchtype},
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

  Future<dio.Response> getList(String listType) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().post(
          'https://reelpro.yatilabs.com/api/v1/team/create',
          data: {'listtype': listType},
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

  Future<dio.Response> getCommentList(int catchId) async {
    userId = await SaveUserId().getId();
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/v1/catchlog/commentslist/$catchId',
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

  Future<dio.Response> getFishSpecies() async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/fish-species-list',
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

  var getList1 = <FishSpeciesList>[];
  getListFinal() async {
    await getFishSpecies().then((value) {
      var resp = FishSpeciesListRespone.fromJson(value.data);
      getList1.clear();
      getList1.addAll(resp.data);
    });
  }

  Future<dio.Response> likeCatchlog(int catchId) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().post(
          'https://reelpro.yatilabs.com/api/v1/catchlog/likedislike',
          data: {'catchlog_id': catchId},
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

  Future<dio.Response> likeDislike(int catchLogId) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().post(
          'https://reelpro.yatilabs.com/api/v1/catchlog/likedislike',
          data: {'catchlog_id': catchLogId},
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

  Future<dio.Response> viewCatchlogList(int catchType) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().post(
          'https://reelpro.yatilabs.com/api/v1/catchlog/view-catchlog-list',
          data: {
            'catchtype': catchType,
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

  var isLoadingc = false.obs;
  var getCatchlogList1 = <ViewCatchlogList>[].obs;
  getfinalCatchlog() async {
    isLoadingc.value = true;
    await viewCatchlogList(2).then((value) {
      var resp = ViewCatchlogResponse.fromJson(value.data);
      getCatchlogList1.clear();
      getCatchlogList1.addAll(resp.data);
    });
    isLoadingc.value = false;
  }

  Future<dio.Response> addComment(int catchlogId, String comment) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().post(
          'https://reelpro.yatilabs.com/api/v1/catchlog/comment',
          data: {'catchlog_id': catchlogId, 'comment': comment},
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

  var commentList = <CommentList>[].obs;
  getCommentListFinal(int catchId) async {
    await getCommentList(catchId).then((value) {
      var resp = CommentListRespone.fromJson(value.data);
      commentList.clear();
      commentList.addAll(resp.data);
    });
  }

  Future<dio.Response> specificUserCatch(int userId, int catchType) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().post(
          'https://reelpro.yatilabs.com/api/v1/catchlog/view-catchlog-list',
          data: {
            'catchtype': catchType,
            'user_id': userId,
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

  var sLoading = false.obs;
  var catchList = <CatchData>[].obs;
  specificUserCatchFinal(int userId, int catchType) async {
    sLoading.value = true;
    await specificUserCatch(userId, catchType).then((value) {
      var resp = UserCatchListResponse.fromJson(value.data);
      catchList.clear();
      catchList.addAll(resp.data);
    });
    sLoading.value = false;
  }

  Future<dio.Response> deleteCatchComment(int commentId) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/v1/catchlog/delete-comment/$commentId',
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

  Future<dio.Response> deleteCatchLog(int catchId) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/v1/catchlog/deletecatchlog/$catchId',
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

  Future<dio.Response> catchLikeList(int catchId) async {
    String authToken = await SharedPreferences1().getToken();
    try {
      dio.Response response;
      response = await dio.Dio().get(
          'https://reelpro.yatilabs.com/api/v1/catchlog/likelist/$catchId',
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

  var likeList = <DataCLike>[].obs;
  var isLoadingCLike = false.obs;
  catchLikeListFinal(int catchId) async {
    isLoadingCLike.value = true;
    await catchLikeList(catchId).then((value) {
      var resp = CatchLikeList.fromJson(value.data);
      likeList.clear();
      likeList.addAll(resp.data);
    });
    isLoadingCLike.value = false;
  }

  CatchLikeList? catchLikeList1;
  Future<CatchLikeList> catchLikeListFinal1(int catchId) async {
    var resp = await catchLikeList(catchId);
    catchLikeList1 = CatchLikeList.fromJson(resp.data);
    return catchLikeList1!;
  }
}
