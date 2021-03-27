import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../models/anime.dart';

import '../widgets/expandable_text.dart';

class AnimeDetail extends StatelessWidget {
  static const routeName = '/anime-detail';

  final Function toogleWatchList;
  final Function isWatchList;

  AnimeDetail(this.toogleWatchList, this.isWatchList);

  String _typeText(type) {
    switch (type) {
      case Type.TV:
        return 'TV';
        break;
      case Type.OVA:
        return 'OVA';
        break;
      case Type.ONA:
        return 'ONA';
        break;
      case Type.Movie:
        return 'Movie';
        break;
      case Type.Special:
        return 'Special';
        break;
      default:
        return 'Unknown';
    }
  }

  String _statusText(status) {
    switch (status) {
      case Status.Airing:
        return 'Currently Airing';
        break;
      case Status.Complete:
        return 'Finished';
        break;
      case Status.NotYet:
        return 'Not yet aired';
        break;
      default:
        return 'Unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    final animeId = ModalRoute.of(context).settings.arguments;
    final selectedAnime =
        DUMMY_ANIMES.firstWhere((anime) => anime.id == animeId);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedAnime.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  selectedAnime.image,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  selectedAnime.title,
                  style: Theme.of(context).textTheme.headline1,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Color(0xfffcfcfc),
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              _typeText(selectedAnime.type),
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            Text(
                              _statusText(selectedAnime.status),
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            Text(
                              '${selectedAnime.episodes} Episodes',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(
                              flex: 1,
                              fit: FlexFit.loose,
                              child: Text(
                                selectedAnime.aired,
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.loose,
                              child: Text(
                                '${selectedAnime.studio} Studio',
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${selectedAnime.genres.join(' - ')}',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: ExpandableText(
                  selectedAnime.description,
                  trimLines: 5,
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => toogleWatchList(animeId),
        child:
            Icon(isWatchList(animeId) ? Icons.cancel : Icons.bookmark_rounded),
      ),
    );
  }
}
