import 'package:flutter_bloc/flutter_bloc.dart';

import './bloc.dart';
import 'package:meta/meta.dart';

import 'package:iamplus_zomato/bloc/restaurant_event.dart';
import 'package:iamplus_zomato/bloc/restaurant_state.dart';
import 'package:iamplus_zomato/models/restaurant_data.dart';
import 'package:iamplus_zomato/repository/api_repository.dart';

class RestaurantBloc extends Bloc<RestaurantEvent, RestaurantState> {
  final ApiRepository repository;
  final double lat, lon;

  RestaurantBloc(
      {@required this.repository, @required this.lat, @required this.lon})
      : assert(repository != null);

  @override
  RestaurantState get initialState => RestaurantEmpty();

  @override
  Stream<RestaurantState> mapEventToState(RestaurantEvent event) async* {
    if (event is FetchRestaurant) {
      yield RestaurantLoading();
      try {
        final RestaurantData data = await repository.fetchRestaurants(lat, lon);
        yield RestaurantLoaded(data: data);
      } catch (_) {
        yield RestaurantError();
      }
    }
  }
}
