import 'package:flutter/cupertino.dart';

import './hero_model.dart';

class HeroesController extends ChangeNotifier {
  List<HeroModel> heroes = [
    HeroModel(name: "Thor"),
    HeroModel(name: "Iron Man"),
    HeroModel(name: "Batman"),
    HeroModel(name: "Captain America"),
    HeroModel(name: "Superman"),
  ];

  checkFavorite(HeroModel model) {
    model.isFavorite = !model.isFavorite;
    notifyListeners();
  }
}
