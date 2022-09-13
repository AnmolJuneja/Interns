// To parse this JSON data, do
//
//     final stepTwo = stepTwoFromJson(jsonString);

import 'dart:convert';
class StepTwo {
    StepTwo({
        this.success,
        this.message,
        this.data,
    });

    bool? success;
    String? message;
    Data1? data;

    factory StepTwo.fromJson(Map<String, dynamic> json) => StepTwo(
        success: json["success"],
        message: json["message"],
        data: Data1.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data!.toJson(),
    };
}

class Data1 {
    Data1({
        this.id,
        this.phoneNumber,
        this.otp,
        this.authToken,
        this.isVerified,
        this.profileStep,
    });

    int? id;
    String? phoneNumber;
    String? otp;
    String? authToken;
    int? isVerified;
    int? profileStep;

    factory Data1.fromJson(Map<String, dynamic> json) => Data1(
        id: json["id"],
        phoneNumber: json["phone_number"],
        otp: json["otp"],
        authToken: json["auth_token"],
        isVerified: json["is_verified"],
        profileStep: json["profile_step"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "phone_number": phoneNumber,
        "otp": otp,
        "auth_token": authToken,
        "is_verified": isVerified,
        "profile_step": profileStep,
    };
}
