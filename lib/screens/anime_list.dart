import 'package:flutter/material.dart';

import '../models/anime.dart';

import '../widgets/anime_card.dart';

class AnimeList extends StatelessWidget {
  final List<Anime> avaliableAnimes;
  AnimeList(this.avaliableAnimes);

  static const routeName = '/anime_list';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.count(
        padding: const EdgeInsets.all(10),
        childAspectRatio: 2 / 3,
        crossAxisCount: 2,
        children: avaliableAnimes
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
