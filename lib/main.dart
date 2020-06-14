import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import './Home.dart';
import 'api/api_client.dart';
import 'bloc/restaurant_bloc.dart';
import 'repository/repositories.dart';
import 'package:http/http.dart' as http;

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  final ApiRepository repository = ApiRepository(
    quoteApiClient: ApiClient(
      httpClient: http.Client(),
    ),
  );
  runApp(App(
    repository: repository,
  ));
}

class SimpleBlocDelegate extends BlocDelegate {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
  }
}

class App extends StatefulWidget {
  final ApiRepository repository;

  App({Key key, @required this.repository})
      : assert(repository != null),
        super(key: key);

  @override
  _AppPageState createState() => _AppPageState(repository);
}

class _AppPageState extends State<App> {
  Position position = null;
  final ApiRepository repository;

  _AppPageState(this.repository);

  void requestLocationPermission(BuildContext context) async {
    Position currentPosition = await Geolocator().getCurrentPosition(
      locationPermissionLevel: GeolocationPermission.locationWhenInUse,
      desiredAccuracy: LocationAccuracy.low);

    setState(() {
      position = currentPosition;
    });
  }

  @override
  Widget build(BuildContext context) {
    requestLocationPermission(context);
    return MaterialApp(
      title: 'Iam+',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: BlocProvider(
          create: (context) => RestaurantBloc(
              repository: repository,
              lat: position != null ? position.latitude : 21.1458,
              lon: position !=null ? position.longitude : 79.0882),
          child: Home(),
        ),
      ),
    );
  }
}
