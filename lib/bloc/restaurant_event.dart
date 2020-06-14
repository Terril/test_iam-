import 'package:equatable/equatable.dart';

abstract class RestaurantEvent extends Equatable {
  const RestaurantEvent();
}

class FetchRestaurant extends RestaurantEvent {
  const FetchRestaurant();

  @override
  List<Object> get props => [];
}