import 'package:flutter/material.dart';
import 'package:flutter_places_app/providers/great_places.dart';
import 'package:flutter_places_app/screens/add_place.dart';
import 'package:flutter_places_app/screens/places_list.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GreatPlaces(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Amazing Places',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlaces.routeName: (ctx) => AddPlaces(),
        },
      ),
    );
  }
}
