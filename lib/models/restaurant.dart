import './locality.dart';
import './popularity.dart';
import './nearby_restaurant.dart';
import 'package:equatable/equatable.dart';

class Restaurant extends Equatable {
  Locality locality;
  Popularity popularity;
  String link;
  List<NearbyRestaurants> nearbyRestaurants;

  Restaurant(
      {this.locality, this.popularity, this.link, this.nearbyRestaurants});

  Restaurant.fromJson(Map<String, dynamic> json) {
    locality = json['locality'] != null
        ? new Locality.fromJson(json['locality'])
        : null;
    popularity = json['popularity'] != null
        ? new Popularity.fromJson(json['popularity'])
        : null;
    link = json['link'];
    if (json['nearby_restaurants'] != null) {
      nearbyRestaurants = new List<NearbyRestaurants>();
      json['nearby_restaurants'].forEach((v) {
        nearbyRestaurants.add(new NearbyRestaurants.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.locality != null) {
      data['locality'] = this.locality.toJson();
    }
    if (this.popularity != null) {
      data['popularity'] = this.popularity.toJson();
    }
    data['link'] = this.link;
    if (this.nearbyRestaurants != null) {
      data['nearby_restaurants'] =
          this.nearbyRestaurants.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() => 'Restaurant { locality: $locality }';

   @override
  List<Object> get props => [locality, popularity, link, nearbyRestaurants];
}
