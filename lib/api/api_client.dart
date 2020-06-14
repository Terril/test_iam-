import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/restaurant_data.dart';

class ApiClient {
  final String _baseUrl = 'https://developers.zomato.com/api/v2.1';
  final String API_KEY = '1e3c349cc25d35cea4a89cf86995cd6b';
  final http.Client httpClient;
  ApiClient({
    @required this.httpClient,
  }) : assert(httpClient != null);

  Future<RestaurantData> fetchRestaurants(double lat, double lon) async {
    final url = '$_baseUrl/geocode?lat=$lat&lon=$lon';
    final response = await this.httpClient.get(url, headers: {"user-key": API_KEY});

    if (response.statusCode != 200) {
      throw new Exception('error getting quotes');
    }

    final json = jsonDecode(response.body);
    return RestaurantData.fromJson(json);
  }
}
