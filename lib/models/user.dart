class User {
  String name;
  String zomatoHandle;
  String foodieLevel;
  String foodieLevelNum;
  String foodieColor;
  String profileUrl;
  String profileDeeplink;
  String profileImage;

  User(
      {this.name,
      this.zomatoHandle,
      this.foodieLevel,
      this.foodieLevelNum,
      this.foodieColor,
      this.profileUrl,
      this.profileDeeplink,
      this.profileImage});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    zomatoHandle = json['zomato_handle'];
    foodieLevel = json['foodie_level'];
    foodieLevelNum = json['foodie_level_num'];
    foodieColor = json['foodie_color'];
    profileUrl = json['profile_url'];
    profileDeeplink = json['profile_deeplink'];
    profileImage = json['profile_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['zomato_handle'] = this.zomatoHandle;
    data['foodie_level'] = this.foodieLevel;
    data['foodie_level_num'] = this.foodieLevelNum;
    data['foodie_color'] = this.foodieColor;
    data['profile_url'] = this.profileUrl;
    data['profile_deeplink'] = this.profileDeeplink;
    data['profile_image'] = this.profileImage;
    return data;
  }
}