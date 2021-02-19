import 'package:flutter/material.dart';
import 'package:projeto_lista/hero_model.dart';
import 'package:projeto_lista/heroes_controller.dart';
import 'package:provider/provider.dart';

class HomeWidget extends StatefulWidget {
  HomeWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  _buildList() {
    HeroesController heroesController = Provider.of<HeroesController>(context);

    return ListView.builder(
      itemCount: heroesController.heroes.length,
      itemBuilder: (context, index) =>
          _buildItems(heroesController.heroes[index]),
    );
  }

  _buildItems(HeroModel model) {
    HeroesController heroesController = Provider.of<HeroesController>(context);

    return ListTile(
      title: Text(model.name),
      trailing: model.isFavorite
          ? Icon(Icons.star, color: Colors.yellow)
          : Icon(Icons.star_border),
      onTap: () => heroesController.checkFavorite(model),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: Consumer<HeroesController>(
          builder: (contexto, heroesController, widget) {
            return Center(
              child: Text(
                heroesController.heroes
                    .where((element) => element.isFavorite)
                    .length
                    .toString(),
                style: TextStyle(fontSize: 18),
              ),
            );
          },
        ),
      ),
      body: Consumer<HeroesController>(
          builder: (contexto, heroesController, widget) {
        return _buildList();
      }),
    );
  }
}
