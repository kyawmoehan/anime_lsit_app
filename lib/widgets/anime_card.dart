import 'package:flutter/material.dart';

import '../screens/anime_detail.dart';

class AnimeCard extends StatelessWidget {
  final String id;
  final String title;
  final String image;

  const AnimeCard({
    this.id,
    this.title,
    this.image,
  });

  void _selectAnime(ctx) {
    Navigator.of(ctx).pushNamed(AnimeDetail.routeName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectAnime(context),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            Expanded(
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Image.network(
                    image,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
