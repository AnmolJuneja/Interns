
class UnfollowUser {
  bool? success;
  String? message;

  UnfollowUser({this.success, this.message});

  UnfollowUser.fromJson(Map<String, dynamic> json) {
    if(json["success"] is bool) {
      success = json["success"];
    }
    if(json["message"] is String) {
      message = json["message"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["success"] = success;
    _data["message"] = message;
    return _data;
  }
}