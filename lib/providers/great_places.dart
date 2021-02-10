import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_places_app/models/place.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _item = [];

  List<Place> get items {
    return [..._item];
  }

  void addPlace(String picketTitle, File pickedImage) {
    final newPlace = Place(
      id: DateTime.now().toString(),
      image: pickedImage,
      title: picketTitle,
      location: null,
    );
    _item.add(newPlace);
    notifyListeners();
  }
}
