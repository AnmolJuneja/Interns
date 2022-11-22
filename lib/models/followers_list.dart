class FollowersList {
  bool? success;
  String? message;
  List<Data>? data;

  FollowersList({this.success, this.message, this.data});

  FollowersList.fromJson(Map<String, dynamic> json) {
    if (json["success"] is bool) {
      success = json["success"];
    }
    if (json["message"] is String) {
      message = json["message"];
    }
    if (json["data"] is List) {
      data = json["data"] == null
          ? null
          : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["success"] = success;
    data["message"] = message;
    data["data"] = data;
    return data;
  }
}

class Data {
  int? id;
  String? firstname;
  String? lastname;
  dynamic email;
  String? phoneNumber;
  String? profilePic;
  Pivot? pivot;

  Data(
      {this.id,
      this.firstname,
      this.lastname,
      this.email,
      this.phoneNumber,
      this.profilePic,
      this.pivot});

  Data.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["firstname"] is String) {
      firstname = json["firstname"];
    }
    if (json["lastname"] is String) {
      lastname = json["lastname"];
    }
    email = json["email"];
    if (json["phone_number"] is String) {
      phoneNumber = json["phone_number"];
    }
    if (json["profile_pic"] is String) {
      profilePic = json["profile_pic"];
    }
    if (json["pivot"] is Map) {
      pivot = json["pivot"] == null ? null : Pivot.fromJson(json["pivot"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["firstname"] = firstname;
    data["lastname"] = lastname;
    data["email"] = email;
    data["phone_number"] = phoneNumber;
    data["profile_pic"] = profilePic;
    if (pivot != null) {
      data["pivot"] = pivot?.toJson();
    }
    return data;
  }
}

class Pivot {
  int? followingId;
  int? followerId;
  String? createdAt;
  String? updatedAt;

  Pivot({this.followingId, this.followerId, this.createdAt, this.updatedAt});

  Pivot.fromJson(Map<String, dynamic> json) {
    if (json["following_id"] is int) {
      followingId = json["following_id"];
    }
    if (json["follower_id"] is int) {
      followerId = json["follower_id"];
    }
    if (json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if (json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["following_id"] = followingId;
    data["follower_id"] = followerId;
    data["created_at"] = createdAt;
    data["updated_at"] = updatedAt;
    return data;
  }
}
