import 'package:reelpro/models/event_order_list.dart';
class FeedListResponse {
  List<SingleFeedResponse> data = [];
  int total = 0;
  FeedListResponse.fromJson(Map<String, dynamic> json) {
    if (json["data"] is List) {
      data = (json["data"] == null
          ? null
          : (json["data"] as List)
              .map((e) => SingleFeedResponse.fromJson(e))
              .toList())!;
    }
    total = json['total'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['data'] = this.data.map((v) => v.toJson()).toList();
    data['total'] = total;
    return data;
  }
}
class SingleFeedResponse {
  int id = 0;
  int userId = 0;
  String? location;
  double lng = 0.0;
  double lat = 0.0;
  String? description;
  int? viewStatus;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;
  User? feedUserInfo;
  List<GetFeedImages> getFeedImages = [];
  bool isLiked = false;
  int totalComments = 0;
  int totalLikes = 0;
  SingleFeedResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    location = json['location'];
    lng = json['lng'];
    lat = json['lat'];
    description = json['description'];
    viewStatus = json['view_status'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    feedUserInfo = json['feed_user_info'] != null
        ? User.fromJson(json['feed_user_info'])
        : null;
    if (json["get_feed_images"] is List) {
      getFeedImages = (json["get_feed_images"] as List)
          .map((e) => GetFeedImages.fromJson(e))
          .toList();
    }
    isLiked = json['is_liked'];
    totalComments = json['total_comments'];
    totalLikes = json['total_likes'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['location'] = location;
    data['lng'] = lng;
    data['lat'] = lat;
    data['description'] = description;
    data['view_status'] = viewStatus;
    data['deleted_at'] = deletedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (feedUserInfo != null) {
      data['feed_user_info'] = feedUserInfo?.toJson();
    }
    data["get_feed_images"] =
        getFeedImages.map((e) => e.toJson()).toList();
    // if (this.getFeedImages != null) {
    //   data['get_feed_images'] =
    //       this.getFeedImages.map((v) => v.toJson()).toList();
    // }
    data['is_liked'] = isLiked;
    data['total_comments'] = totalComments;
    data['total_likes'] = totalLikes;
    return data;
  }
}
class GetFeedImages {
  int feedId = 0;
  String? pic;
  GetFeedImages.fromJson(Map<String, dynamic> json) {
    feedId = json['feed_id'];
    pic = json['pic'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['feed_id'] = feedId;
    data['pic'] = pic;
    return data;
  }
}