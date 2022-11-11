import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reelpro/controllers/registeration_controllers.dart';
import 'package:reelpro/models/shared_preferences.dart';
import 'package:reelpro/controllers/fetch_lat_lng.dart';

class OtpViewModel {
  final instance = Get.put(RegistrationStepTwo2());

  Future<dio.Response> getOtp(String phoneNumber, String countryCode) async {
    await SaveCity().saveCity(FetchLatLng().address.value);
    await SaveCountry().saveCountry(FetchLatLng().country.value);
    await SaveState().saveState(FetchLatLng().state.value);
    await SaveLocality().saveLocality(FetchLatLng().address1.value);
    try {
      dio.Response response;
      response = await dio.Dio().post(
          'https://reelpro.yatilabs.com/api/login-step-one',
          data: {
            'phone_number': countryCode + phoneNumber,
          },
          options: dio.Options(responseType: dio.ResponseType.json, headers: {
            'Accept': 'application/json',
          }));
      // ignore: avoid_print
      print("Response Data  ${response.data}");
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
    // ignore: null_argument_to_non_null_type
    return Future.value();
  }

  Future<dio.Response> registersteptwo(
    String fishingType, String shirtSize, String veteran, String club) async {
    String authToken = await SharedPreferences1().getToken();
    String firstName = await SaveFirstName().getFirstName();
    String lastName = await SaveLastName().getLastName();
    String email = await SaveEmail().getEmail();
    String gender = await Gender().getGender();
    String dob = await Dob().getDob();
    String numb = await SaveNumber().getNumber();
    String profilePic = await SaveProfilePic().getProfilePic();
    var userId1 = await SaveUserId().getId();
    instance.profilePic1.value = profilePic;
    instance.userId = userId1;
    instance.number.value = numb;
    instance.dob1.value = dob;
    instance.firstName1.value = firstName;
    instance.lastName1.value = lastName;
    instance.email1.value = email;
    instance.genderF.value = gender;
    try {
      dio.Response response;
      response = await dio.Dio().post(
          'https://reelpro.yatilabs.com/api/register-profile-step-two',
          data: {
            'fishing_type': fishingType,
            'shirt_size': shirtSize,
            'veteran': veteran,
            'club': club
          },
          options: dio.Options(headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $authToken'
          }));
      // ignore: avoid_print
      print("Response Data  ${response.data}");
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
    // ignore: null_argument_to_non_null_type
    return Future.value();
  }
    Future<dio.Response> registerUser(
      String dob,
      String email,
      String gender,
      String firstname,
      String lastname,
      double lat,
      double lng,
      String authToken) async {
    var authToken = await SharedPreferences1().getToken();
  
    try {
      dio.Response response;
      response = await dio.Dio().post(
          'https://reelpro.yatilabs.com/api/register-profile-step-one',
          data: {
            'firstname': firstname,
            'lastname': lastname,
            'email': email,
            'dob': dob,
            'gender': gender,
            'lat': lat,
            'lng': lng,
          },
          options: dio.Options(responseType: dio.ResponseType.json, headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $authToken'
          }));
      // ignore: avoid_print
      print("Response Data  ${response.data}");
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
    // ignore: null_argument_to_non_null_type
    return Future.value();
  }
   Future<dio.Response> verifyOtp(String otp, String confirmationToken) async {
    try {
      dio.Response response;
      response = await dio.Dio().post(
          'https://reelpro.yatilabs.com/api/login-step-two',
          data: {'otp': otp, 'confirmation_token': confirmationToken},
          options: dio.Options(responseType: dio.ResponseType.json, headers: {
            'Accept': 'application/json',
          }));
      // ignore: avoid_print
      print("Response Data  ${response.data['message']}");
      Get.snackbar('', response.data['message'],
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.only(bottom: 20.h));
      return response;
    } on dio.DioError catch (err) {
      print(err.message);
      print(err.response);
      print(err.toString());
      Get.snackbar('error', err.response!.data['error']);
    }
    // ignore: null_argument_to_non_null_type
    return Future.value();
  }
}
