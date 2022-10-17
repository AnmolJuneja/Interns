class EditProfile {
   EditProfile ({
        this.success,
        this.message,
        this.data,
    });

    bool? success;
    String? message;
    Data? data;

    factory EditProfile.fromJson(Map<String, dynamic> json) => EditProfile(
        success: json["success"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data!.toJson(),
    };
}

class Data {
    Data({
        this.id,
        this.firstname,
        this.lastname,
        this.email,
        this.dob,
        this.gender,
        this.profilePic,
        this.phoneNumber,
        this.description,
        this.cardId,
        this.customerId,
        this.timezone,
        this.authToken,
        this.profileStep,
        this.isVerified,
        this.userDetails,
        this.address,
        this.following,
        this.followers,
        this.wishlist,
    });

    int? id;
    String? firstname;
    String? lastname;
    String? email;
    String? dob;
    String? gender;
    dynamic profilePic;
    String? phoneNumber;
    String? description;
    String? cardId;
    String? customerId;
    String? timezone;
    dynamic authToken;
    int? profileStep;
    int? isVerified;
    dynamic userDetails;
    dynamic address;
    int? following;
    int? followers;
    List<dynamic>? wishlist;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        email: json["email"],
        dob: json["dob"],
        gender: json["gender"],
        profilePic: json["profile_pic"],
        phoneNumber: json["phone_number"],
        description: json["description"],
        cardId: json["card_id"],
        customerId: json["customer_id"],
        timezone: json["timezone"],
        authToken: json["auth_token"],
        profileStep: json["profile_step"],
        isVerified: json["is_verified"],
        userDetails: json["user_details"],
        address: json["address"],
        following: json["following"],
        followers: json["followers"],
        wishlist: List<dynamic>.from(json["wishlist"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "firstname": firstname,
        "lastname": lastname,
        "email": email,
        "dob": dob,
        "gender": gender,
        "profile_pic": profilePic,
        "phone_number": phoneNumber,
        "description": description,
        "card_id": cardId,
        "customer_id": customerId,
        "timezone": timezone,
        "auth_token": authToken,
        "profile_step": profileStep,
        "is_verified": isVerified,
        "user_details": userDetails,
        "address": address,
        "following": following,
        "followers": followers,
        "wishlist": List<dynamic>.from(wishlist!.map((x) => x)),
    };
}
