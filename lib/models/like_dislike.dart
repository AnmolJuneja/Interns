class LikeDislike {
    LikeDislike({
        this.success,
        this.message,
    });

    bool? success;
    String? message;

    factory LikeDislike.fromJson(Map<String, dynamic> json) => LikeDislike(
        success: json["success"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
    };
}
