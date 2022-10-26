class LikeFeed {
    LikeFeed({
        this.success,
        this.message,
    });

    bool? success;
    String? message;

    factory LikeFeed.fromJson(Map<String, dynamic> json) => LikeFeed(
        success: json["success"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
    };
}
