// To parse this JSON data, do
//
//     final registrationStepTwo = registrationStepTwoFromJson(jsonString);



class RegistrationStepTwo {
    RegistrationStepTwo({
        this.success,
        this.message,
        this.data,
    });

    bool? success;
    String? message;
    Data4? data;

    factory RegistrationStepTwo.fromJson(Map<String, dynamic> json) => RegistrationStepTwo(
        success: json["success"],
        message: json["message"],
        data: Data4.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data!.toJson(),
    };
}

class Data4 {
    Data4({
        this.id,
        this.firstname,
        this.lastname,
        this.email,
        this.dob,
        this.gender,
        this.authToken,
        this.profileStep,
        this.isVerified,
        this.userDetails,
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
    UserDetails? userDetails;

    factory Data4.fromJson(Map<String, dynamic> json) => Data4(
        id: json["id"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        email: json["email"],
        dob: json["dob"],
        gender: json["gender"],
        authToken: json["auth_token"],
        profileStep: json["profile_step"],
        isVerified: json["is_verified"],
        userDetails: UserDetails.fromJson(json["user_details"]),
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
        "user_details": userDetails!.toJson(),
    };
}

class UserDetails {
    UserDetails({
        this.id,
        this.userId,
        this.fishingType,
        this.shirtSize,
        this.isVeteran,
        this.club,
        this.createdAt,
        this.updatedAt,
    });

    int? id;
    int? userId;
    String? fishingType;
    String? shirtSize;
    String? isVeteran;
    String? club;
    DateTime? createdAt;
    DateTime? updatedAt;

    factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
        id: json["id"],
        userId: json["user_id"],
        fishingType: json["fishing_type"],
        shirtSize: json["shirt_size"],
        isVeteran: json["is_veteran"],
        club: json["club"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "fishing_type": fishingType,
        "shirt_size": shirtSize,
        "is_veteran": isVeteran,
        "club": club,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
    };
}
