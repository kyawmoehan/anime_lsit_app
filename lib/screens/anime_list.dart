import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/anime_card.dart';

class AnimeList extends StatelessWidget {
  static const routeName = '/anime_list';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.count(
        padding: const EdgeInsets.all(10),
        childAspectRatio: 2 / 3,
        crossAxisCount: 2,
        children: DUMMY_ANIMES
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
