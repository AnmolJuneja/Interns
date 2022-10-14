class AddComment {
    AddComment({
        this.success,
        this.message,
    });

    bool? success;
    String? message;

    factory AddComment.fromJson(Map<String, dynamic> json) => AddComment(
        success: json["success"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
    };
}
