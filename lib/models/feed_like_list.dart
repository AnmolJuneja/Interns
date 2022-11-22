class FeedLikeList {
  FeedLikeList({
    this.success,
    this.message,
    required this.data,
  });

  bool? success;
  String? message;
  List<FeedLike> data = [];

  factory FeedLikeList.fromJson(Map<String, dynamic> json) => FeedLikeList(
        success: json["success"],
        message: json["message"],
        data:
            List<FeedLike>.from(json["data"].map((x) => FeedLike.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class FeedLike {
  FeedLike({
    this.id,
    this.userId,
    this.feedId,
    this.catchlogId,
    this.sportlightId,
    this.type,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.user,
  });

  int? id;
  int? userId;
  int? feedId;
  dynamic catchlogId;
  dynamic sportlightId;
  String? type;
  int? status;
  String? createdAt;
  String? updatedAt;
  User? user;

  factory FeedLike.fromJson(Map<String, dynamic> json) => FeedLike(
        id: json["id"],
        userId: json["user_id"],
        feedId: json["feed_id"],
        catchlogId: json["catchlog_id"],
        sportlightId: json["sportlight_id"],
        type: json["type"],
        status: json["status"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "feed_id": feedId,
        "catchlog_id": catchlogId,
        "sportlight_id": sportlightId,
        "type": type,
        "status": status,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "user": user!.toJson(),
      };
}

class User {
  User({
    this.id,
    this.firstname,
    this.lastname,
    this.email,
    this.emailVerifiedAt,
    this.phoneNumber,
    this.phoneNumberVerifiedAt,
    this.dob,
    this.gender,
    this.profilePic,
    this.description,
    this.otp,
    this.confirmationToken,
    this.authToken,
    this.deviceToken,
    this.profileStep,
    this.isVerified,
    this.isDeleted,
    this.createdAt,
    this.updatedAt,
    this.cardId,
    this.customerId,
    this.timezone,
    this.roleId,
    this.deletedAt,
  });

  int? id;
  String? firstname;
  String? lastname;
  String? email;
  DateTime? emailVerifiedAt;
  String? phoneNumber;
  dynamic phoneNumberVerifiedAt;
  String? dob;
  String? gender;
  String? profilePic;
  String? description;
  String? otp;
  String? confirmationToken;
  dynamic authToken;
  dynamic deviceToken;
  int? profileStep;
  int? isVerified;
  int? isDeleted;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? cardId;
  String? customerId;
  String? timezone;
  int? roleId;
  dynamic deletedAt;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        email: json["email"],
        emailVerifiedAt: DateTime.parse(json["email_verified_at"]),
        phoneNumber: json["phone_number"],
        phoneNumberVerifiedAt: json["phone_number_verified_at"],
        dob: json["dob"],
        gender: json["gender"],
        profilePic: json["profile_pic"],
        description: json["description"],
        otp: json["otp"],
        confirmationToken: json["confirmation_token"],
        authToken: json["auth_token"],
        deviceToken: json["device_token"],
        profileStep: json["profile_step"],
        isVerified: json["is_verified"],
        isDeleted: json["is_deleted"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        cardId: json["card_id"],
        customerId: json["customer_id"],
        timezone: json["timezone"],
        roleId: json["role_id"],
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstname": firstname,
        "lastname": lastname,
        "email": email,
        "email_verified_at": emailVerifiedAt!.toIso8601String(),
        "phone_number": phoneNumber,
        "phone_number_verified_at": phoneNumberVerifiedAt,
        "dob": dob,
        "gender": gender,
        "profile_pic": profilePic,
        "description": description,
        "otp": otp,
        "confirmation_token": confirmationToken,
        "auth_token": authToken,
        "device_token": deviceToken,
        "profile_step": profileStep,
        "is_verified": isVerified,
        "is_deleted": isDeleted,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "card_id": cardId,
        "customer_id": customerId,
        "timezone": timezone,
        "role_id": roleId,
        "deleted_at": deletedAt,
      };
}
