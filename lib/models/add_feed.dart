
class AddFeed {
  bool? success;
  String? message;
  Data? data;

  AddFeed({this.success, this.message, this.data});

  AddFeed.fromJson(Map<String, dynamic> json) {
    if(json["success"] is bool) {
      success = json["success"];
    }
    if(json["message"] is String) {
      message = json["message"];
    }
    if(json["data"] is Map) {
      data = json["data"] == null ? null : Data.fromJson(json["data"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["success"] = success;
    _data["message"] = message;
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class Data {
  String? location;
  double? lng;
  double? lat;
  String? description;
  int? userId;
  int? viewStatus;
  String? updatedAt;
  String? createdAt;
  int? id;

  Data({this.location, this.lng, this.lat, this.description, this.userId, this.viewStatus, this.updatedAt, this.createdAt, this.id});

  Data.fromJson(Map<String, dynamic> json) {
    if(json["location"] is String) {
      location = json["location"];
    }
    if(json["lng"] is double) {
      lng = json["lng"];
    }
    if(json["lat"] is double) {
      lat = json["lat"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["user_id"] is int) {
      userId = json["user_id"];
    }
    if(json["view_status"] is int) {
      viewStatus = json["view_status"];
    }
    if(json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    if(json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if(json["id"] is int) {
      id = json["id"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["location"] = location;
    _data["lng"] = lng;
    _data["lat"] = lat;
    _data["description"] = description;
    _data["user_id"] = userId;
    _data["view_status"] = viewStatus;
    _data["updated_at"] = updatedAt;
    _data["created_at"] = createdAt;
    _data["id"] = id;
    return _data;
  }
}