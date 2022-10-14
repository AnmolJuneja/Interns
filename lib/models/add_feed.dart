class AddFeed {
    AddFeed({
        this.success,
        this.message,
        this.data,
    });

    bool? success;
    String? message;
    Data? data;

    factory AddFeed.fromJson(Map<String, dynamic> json) => AddFeed(
        success: json["success"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data!.toJson(),
    };
}

class Data {
    Data({
        this.location,
        this.lng,
        this.lat,
        this.description,
        this.userId,
        this.viewStatus,
        this.updatedAt,
        this.createdAt,
        this.id,
    });

    String? location;
    double? lng;
    double? lat;
    String? description;
    int? userId;
    int? viewStatus;
    DateTime? updatedAt;
    DateTime? createdAt;
    int? id;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        location: json["location"],
        lng: json["lng"].toDouble(),
        lat: json["lat"].toDouble(),
        description: json["description"],
        userId: json["user_id"],
        viewStatus: json["view_status"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "location": location,
        "lng": lng,
        "lat": lat,
        "description": description,
        "user_id": userId,
        "view_status": viewStatus,
        "updated_at": updatedAt!.toIso8601String(),
        "created_at": createdAt!.toIso8601String(),
        "id": id,
    };
}
