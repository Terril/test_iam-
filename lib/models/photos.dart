import './user.dart';

class Photos {
  String id;
  String url;
  String thumbUrl;
  User user;
  String resId;
  String caption;
  String timestamp;
  String friendlyTime;
  String width;
  String height;
  String commentsCount;
  String likesCount;

  Photos(
      {this.id,
      this.url,
      this.thumbUrl,
      this.user,
      this.resId,
      this.caption,
      this.timestamp,
      this.friendlyTime,
      this.width,
      this.height,
      this.commentsCount,
      this.likesCount});

  Photos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    thumbUrl = json['thumb_url'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    resId = json['res_id'];
    caption = json['caption'];
    timestamp = json['timestamp'];
    friendlyTime = json['friendly_time'];
    width = json['width'];
    height = json['height'];
    commentsCount = json['comments_count'];
    likesCount = json['likes_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['thumb_url'] = this.thumbUrl;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    data['res_id'] = this.resId;
    data['caption'] = this.caption;
    data['timestamp'] = this.timestamp;
    data['friendly_time'] = this.friendlyTime;
    data['width'] = this.width;
    data['height'] = this.height;
    data['comments_count'] = this.commentsCount;
    data['likes_count'] = this.likesCount;
    return data;
  }
}