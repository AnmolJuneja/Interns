// import 'package:get/get.dart';
// import 'package:dio/dio.dart' as dio;
// import 'package:reelpro/models/shared_preferences.dart';
// import 'dart:io';
// class CreateTeam extends GetxController {
//   Future<dio.Response> createTeam(String name , String teamSizeMin , String teamSizeMax , String about , String species , String anglers , String weather , String rules, 
//   String disclaimer , String startTime , String endTime , String id, String eventSchedule , File logo , File banner , String address , String lat , String lng , String eventType , 
//   String eventSpecies, String teams
//   ) async {
//     String authToken = await SharedPreferences1().getToken();
//     dio.Response response;
//     response = await dio.Dio().post(
//         'https://reelpro.yatilabs.com/api/create-event',data: {
//           'name':name , 
//           'team_size_min':teamSizeMin,
//           'team_size_max':teamSizeMax,
//           'about':about,
//           'species':species,
//           'anglers':anglers,
//           'weather':weather,
//           'rules':rules,
//           'disclaimer':disclaimer,
//           'start_time':startTime,
//           'end_time':endTime,
//           'id':id,
//           'event_schedule':eventSchedule,
//           'address':address,
//           'lat':lat,
//           'lng':lng,
//           'event_type':eventType,
//           ''
//         },
//         options: dio.Options(headers: {
//           'Accept': 'application/json',
//           'Authorization': 'Bearer $authToken'
//         }));
//   }
// }
