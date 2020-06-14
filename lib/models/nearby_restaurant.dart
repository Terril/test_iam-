import './restaurant.dart';

class NearbyRestaurants {
  Restaurant restaurant;

  NearbyRestaurants({this.restaurant});

  NearbyRestaurants.fromJson(Map<String, dynamic> json) {
    restaurant = json['restaurant'] != null
        ? new Restaurant.fromJson(json['restaurant'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.restaurant != null) {
      data['restaurant'] = this.restaurant.toJson();
    }
    return data;
  }
}