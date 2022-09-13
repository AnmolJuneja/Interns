

class TeamViewModel {
    TeamViewModel({
        this.success,
        this.message,
        this.data,
    });

    bool? success;
    String? message;
    Data6? data;

    factory TeamViewModel.fromJson(Map<String, dynamic> json) => TeamViewModel(
        success: json["success"],
        message: json["message"],
        data: Data6.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data!.toJson(),
    };
}

class Data6 {
    Data6({
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
    DateTime?createdAt;
    DateTime? updatedAt;
    int? membersCount;
    bool? isEditable;

    factory Data6.fromJson(Map<String, dynamic> json) => Data6(
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
