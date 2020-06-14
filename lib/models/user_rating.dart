class UserRating {
  String aggregateRating;
  String ratingText;
  String ratingColor;
  String votes;

  UserRating(
      {this.aggregateRating, this.ratingText, this.ratingColor, this.votes});

  UserRating.fromJson(Map<String, dynamic> json) {
    aggregateRating = json['aggregate_rating'];
    ratingText = json['rating_text'];
    ratingColor = json['rating_color'];
    votes = json['votes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aggregate_rating'] = this.aggregateRating;
    data['rating_text'] = this.ratingText;
    data['rating_color'] = this.ratingColor;
    data['votes'] = this.votes;
    return data;
  }
}