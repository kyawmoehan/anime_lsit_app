import 'package:flutter/material.dart';

import '../models/anime.dart';

import '../widgets/anime_card.dart';

class Favourites extends StatelessWidget {
  static const routeName = '/favourites';

  final List<Anime> watchListAnimes;

  const Favourites(this.watchListAnimes);
  @override
  Widget build(BuildContext context) {
    if (watchListAnimes.isEmpty) {
      return Center(
        child: Text('You have no Watch List for Anime'),
      );
    }
    return SafeArea(
      child: GridView.count(
        padding: const EdgeInsets.all(10),
        childAspectRatio: 2 / 3,
        crossAxisCount: 2,
        children: watchListAnimes
            .map((anime) => AnimeCard(
                  id: anime.id,
                  title: anime.title,
                  image: anime.image,
                ))
            .toList(),
      ),
    );
  }
}
