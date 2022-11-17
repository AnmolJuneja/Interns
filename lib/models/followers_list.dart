
class FollowersList {
  bool? success;
  String? message;
  List<Data>? data;

  FollowersList({this.success, this.message, this.data});

  FollowersList.fromJson(Map<String, dynamic> json) {
    if(json["success"] is bool) {
      success = json["success"];
    }
    if(json["message"] is String) {
      message = json["message"];
    }
    if(json["data"] is List) {
      data = json["data"] == null ? null : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["success"] = success;
    _data["message"] = message;
    if(data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    return _data;
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

  Data({this.id, this.firstname, this.lastname, this.email, this.phoneNumber, this.profilePic, this.pivot});

  Data.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["firstname"] is String) {
      firstname = json["firstname"];
    }
    if(json["lastname"] is String) {
      lastname = json["lastname"];
    }
    email = json["email"];
    if(json["phone_number"] is String) {
      phoneNumber = json["phone_number"];
    }
    if(json["profile_pic"] is String) {
      profilePic = json["profile_pic"];
    }
    if(json["pivot"] is Map) {
      pivot = json["pivot"] == null ? null : Pivot.fromJson(json["pivot"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["firstname"] = firstname;
    _data["lastname"] = lastname;
    _data["email"] = email;
    _data["phone_number"] = phoneNumber;
    _data["profile_pic"] = profilePic;
    if(pivot != null) {
      _data["pivot"] = pivot?.toJson();
    }
    return _data;
  }
}

class Pivot {
  int? followingId;
  int? followerId;
  String? createdAt;
  String? updatedAt;

  Pivot({this.followingId, this.followerId, this.createdAt, this.updatedAt});

  Pivot.fromJson(Map<String, dynamic> json) {
    if(json["following_id"] is int) {
      followingId = json["following_id"];
    }
    if(json["follower_id"] is int) {
      followerId = json["follower_id"];
    }
    if(json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if(json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["following_id"] = followingId;
    _data["follower_id"] = followerId;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}