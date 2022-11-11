
class AddCommentFeed {
  bool? success;
  String? message;

  AddCommentFeed({this.success, this.message});

  AddCommentFeed.fromJson(Map<String, dynamic> json) {
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