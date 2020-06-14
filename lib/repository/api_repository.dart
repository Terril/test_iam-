import 'dart:async';

import 'package:meta/meta.dart';
import 'package:iamplus_zomato/models/restaurant.dart';
import '../api/api_client.dart';

class ApiRepository {
  final ApiClient quoteApiClient;

  ApiRepository({@required this.quoteApiClient})
      : assert(quoteApiClient != null);

  Future<Restaurant> fetchRestaurants(double lat, double lon) async {
    return await quoteApiClient.fetchRestaurants(lat, lon);
  }
  
}