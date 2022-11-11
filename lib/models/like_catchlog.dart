
class LikeCatchlog {
  bool? success;
  String? message;

  LikeCatchlog({this.success, this.message});

  LikeCatchlog.fromJson(Map<String, dynamic> json) {
    if(json["success"] is bool) {
      success = json["success"];
    }
    if(json["message"] is String) {
      message = json["message"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["success"] = success;
    data["message"] = message;
    return data;
  }
}