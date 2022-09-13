class TeamListResponse {
  TeamListResponse({
   required this.success,
   required this.message,
    required this.data,
   required this.totalRecords,
  });

  bool? success;
  String? message;
  List<TeamList> data = [];
  int? totalRecords;

   TeamListResponse.fromJson(Map<String, dynamic> json) {
    success: json["success"];
        message: json["message"];
        if (json["data"] is List) {
      data =
          (json["data"] as List).map((e) => TeamList.fromJson(e)).toList();
    }
   }

 Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}


class TeamList {
  TeamList({
    this.id,
    this.name,
    this.description,
    this.address,
    this.lng,
    this.lat,
    this.visibility,
    this.profilePicture,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.membersCount,
    this.isEditable,
  });

  int? id;
  String? name;
  String? description;
  String? address;
  double? lng;
  double? lat;
  int? visibility;
  dynamic profilePicture;
  dynamic deletedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? membersCount;
  bool? isEditable;

  factory TeamList.fromJson(Map<String, dynamic> json) => TeamList(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        address: json["address"],
        lng: json["lng"].toDouble(),
        lat: json["lat"].toDouble(),
        visibility: json["visibility"],
        profilePicture: json["profile_picture"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        membersCount: json["members_count"],
        isEditable: json["is_editable"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "address": address,
        "lng": lng,
        "lat": lat,
        "visibility": visibility,
        "profile_picture": profilePicture,
        "deleted_at": deletedAt,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "members_count": membersCount,
        "is_editable": isEditable,
      };
}
