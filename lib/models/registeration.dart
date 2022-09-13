// To parse this JSON data, do
//
//     final registration = registrationFromJson(jsonString);

// import 'dart:convert';

class Registration {
    Registration({
        this.success,
        this.message,
        this.data,
    });

    bool? success;
    String? message;
    DataRegister? data;

    factory Registration.fromJson(Map<String, dynamic> json) => Registration(
        success: json["success"],
        message: json["message"],
        data: DataRegister.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data!.toJson(),
    };
}

class DataRegister {
    DataRegister({
        this.id,
        this.firstname,
        this.lastname,
        this.email,
        this.dob,
        this.gender,
        this.authToken,
        this.profileStep,
        this.isVerified,
    });

    int? id;
    String? firstname;
    String? lastname;
    String? email;
    String? dob;
    String? gender;
    String? authToken;
    int? profileStep;
    int? isVerified;

    factory DataRegister.fromJson(Map<String, dynamic> json) => DataRegister(
        id: json["id"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        email: json["email"],
        dob: json["dob"],
        gender: json["gender"],
        authToken: json["auth_token"],
        profileStep: json["profile_step"],
        isVerified: json["is_verified"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "firstname": firstname,
        "lastname": lastname,
        "email": email,
        "dob": dob,
        "gender": gender,
        "auth_token": authToken,
        "profile_step": profileStep,
        "is_verified": isVerified,
    };
}
