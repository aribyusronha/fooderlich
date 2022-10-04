class Post {
    late String profileImageUrl;
    late String comment;
    late String foodPictureUrl;
    late String timeStamp;

    Post({
        required this.profileImageUrl,
        required this.comment,
        required this.foodPictureUrl,
        required this.timeStamp,
    });

    Post.fromJSON(Map<String, dynamic> json) {
        profileImageUrl = json['profileImageUrl'];
        comment = json['comment'];
        foodPictureUrl = json['foodPictureUrl'];
        timeStamp = json['timeStamp'];
    }
}