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
  runApp(App( repository: repository,
  ));
}

class SimpleBlocDelegate extends BlocDelegate {
  @override
  void onTransition(Bloc bloc, Transition transition) {
     super.onTransition(bloc, transition);
     print(transition);
  }
}

class App extends StatelessWidget {
  final ApiRepository repository;

  App({Key key, @required this.repository})
      : assert(repository != null),
        super(key: key);

 Future<Position> getLocation() async {
   return  await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
 }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Iam+',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: BlocProvider(
          create: (context) => RestaurantBloc(repository: repository, lat: 21.1458, lon: 79.0882),
          child: Home(),
        ),
      ),
    );
  }
}
