import 'package:flutter/material.dart';

class AnimeCard extends StatelessWidget {
  final String id;
  final String title;
  final String image;

  const AnimeCard({
    this.id,
    this.title,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
