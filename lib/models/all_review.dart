import './user.dart';

class AllReviews {
  String rating;
  String reviewText;
  String id;
  String ratingColor;
  String reviewTimeFriendly;
  String ratingText;
  String timestamp;
  String likes;
  User user;
  String commentsCount;

  AllReviews(
      {this.rating,
      this.reviewText,
      this.id,
      this.ratingColor,
      this.reviewTimeFriendly,
      this.ratingText,
      this.timestamp,
      this.likes,
      this.user,
      this.commentsCount});

  AllReviews.fromJson(Map<String, dynamic> json) {
    rating = json['rating'];
    reviewText = json['review_text'];
    id = json['id'];
    ratingColor = json['rating_color'];
    reviewTimeFriendly = json['review_time_friendly'];
    ratingText = json['rating_text'];
    timestamp = json['timestamp'];
    likes = json['likes'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    commentsCount = json['comments_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rating'] = this.rating;
    data['review_text'] = this.reviewText;
    data['id'] = this.id;
    data['rating_color'] = this.ratingColor;
    data['review_time_friendly'] = this.reviewTimeFriendly;
    data['rating_text'] = this.ratingText;
    data['timestamp'] = this.timestamp;
    data['likes'] = this.likes;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    data['comments_count'] = this.commentsCount;
    return data;
  }
}