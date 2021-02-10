import 'package:flutter/material.dart';
import 'package:flutter_places_app/providers/great_places.dart';
import 'package:flutter_places_app/screens/add_place.dart';
import 'package:provider/provider.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Places'),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed(AddPlaces.routeName);
              },
            ),
          ],
        ),
        body: Consumer<GreatPlaces>(
          child: Center(
            child: const Text('Got no places yet, start adding some!'),
          ),
          builder: (ctx, greatPlaces, ch) => greatPlaces.items.length <= 0
              ? ch
              : ListView.builder(
                  itemCount: greatPlaces.items.length,
                  itemBuilder: (ctx, index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          FileImage(greatPlaces.items[index].image),
                    ),
                    title: Text(greatPlaces.items[index].title),
                    onTap: () {
                      // go to detail page...
                    },
                  ),
                ),
        ));
  }
}
