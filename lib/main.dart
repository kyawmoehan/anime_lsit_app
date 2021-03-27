import 'package:flutter/material.dart';

import './models/anime.dart';

import './dummy_data.dart';

import './screens/home_tabs.dart';
import './screens/filters.dart';
import './screens/anime_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Anime> _availableAnimes = DUMMY_ANIMES;
  List<Anime> _watchLsitAnimes = [];
  Set<String> _selectedGeners = {};

  void _toogleWatchList(String id) {
    final existingIndex =
        _watchLsitAnimes.indexWhere((anime) => anime.id == id);
    if (existingIndex >= 0) {
      setState(() {
        _watchLsitAnimes.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _watchLsitAnimes
            .add(DUMMY_ANIMES.firstWhere((anime) => anime.id == id));
      });
    }
  }

  bool _isWatchList(String id) {
    return _watchLsitAnimes.any((anime) => anime.id == id);
  }

  void _setFilters(Set<String> filtersGeners) {
    setState(() {
      _selectedGeners = filtersGeners;
      if (filtersGeners.isEmpty) {
        _availableAnimes = DUMMY_ANIMES;
      } else {
        _availableAnimes = DUMMY_ANIMES.where((anime) {
          final result = anime.genres.intersection(filtersGeners);
          if (result.isNotEmpty) {
            return true;
          } else {
            return false;
          }
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anime List',
      theme: ThemeData(
        primaryColor: Colors.white,
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontSize: 16,
              ),
              headline1: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              headline2: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
              headline3: TextStyle(
                fontSize: 19,
                color: Color(0xff09508f),
              ),
              headline4: TextStyle(
                fontSize: 17,
                color: Colors.black,
              ),
            ),
      ),
      routes: {
        '/': (ctx) => HomeTabs(_availableAnimes, _watchLsitAnimes),
        Filters.routeName: (ctx) => Filters(_selectedGeners, _setFilters),
        AnimeDetail.routeName: (ctx) =>
            AnimeDetail(_toogleWatchList, _isWatchList),
      },
    );
  }
}
