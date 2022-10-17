import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:network_handler/network_handler.dart';
import 'package:reelpro/models/shared_preferences.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegistrationStepTwo2 extends GetxController {
  var color1 = const Color(0xf2B67A329).obs;
  var color6 = const Color(0xf2B67A329).obs;
  var color7 = const Color(0xf2B67A329).obs;
  var color2 = const Color(0xf2B67A329).obs;
  var color3 = const Color(0xf2B67A329).obs;
  var color4 = const Color(0xf2B67A329).obs;
  var color5 = const Color(0xf2B67A329).obs;
  var errorText = ''.obs;
  var genderF = ''.obs;
  var blueColor = const Color(0xff719AC3).obs;
  var isSelected1 = false.obs;
  var isSelected2 = false.obs;
  var width1 = 1.0.obs;
  var width2 = 1.0.obs;
  var width3 = 1.0.obs;
  var width4 = 1.0.obs;
  var width5 = 1.0.obs;
  var fishingType = '';
  var firstName1 = ''.obs;
  var lastName1 = ''.obs;
  var email1 = ''.obs;
  var gender1 = ''.obs;
  var dob1 = ''.obs;
  var number = ''.obs;
  var profilePic1 = ''.obs;
  var description = ''.obs;
  String vetran = '0';
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
    profilePic1.value = profilePic;
    number.value = numb;
    dob1.value = dob;
    firstName1.value = firstName;
    lastName1.value = lastName;
    email1.value = email;
    genderF.value = gender;
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
}
