import 'package:iamplus_zomato/models/restaurant.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';


abstract class RestaurantState extends Equatable {
  const RestaurantState();

  @override
  List<Object> get props => [];
}

class RestaurantEmpty extends RestaurantState {}

class RestaurantLoading extends RestaurantState {}

class RestaurantLoaded extends RestaurantState {
  final Restaurant data;

  const RestaurantLoaded({@required this.data}) : assert(data != null);

  @override
  List<Object> get props => [data];
}

class RestaurantError extends RestaurantState {}
