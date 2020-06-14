import 'dart:async';

import 'package:iamplus_zomato/models/restaurant_data.dart';
import 'package:meta/meta.dart';
import '../api/api_client.dart';

class ApiRepository {
  final ApiClient quoteApiClient;

  ApiRepository({@required this.quoteApiClient})
      : assert(quoteApiClient != null);

  Future<RestaurantData> fetchRestaurants(double lat, double lon) async {
    return await quoteApiClient.fetchRestaurants(lat, lon);
  }

}