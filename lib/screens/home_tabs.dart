import 'package:flutter/material.dart';

import '../models/anime.dart';

import './anime_list.dart';
import './favourites.dart';
import './filters.dart';

class HomeTabs extends StatefulWidget {
  final List<Anime> avaliableAnimes;
  final List<Anime> watchListAnimes;

  const HomeTabs(this.avaliableAnimes, this.watchListAnimes);

  @override
  _HomeTabsState createState() => _HomeTabsState();
}

class _HomeTabsState extends State<HomeTabs> {
  List<Map<String, Object>> _screens;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _screens = [
      {
        'page': AnimeList(widget.avaliableAnimes),
        'title': 'Anime List',
      },
      {
        'page': Favourites(widget.watchListAnimes),
        'title': 'Watch List',
      }
    ];
  }

  void _selectedScreen(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedIndex]['title']),
        actions: [
          IconButton(
              icon: Icon(Icons.filter_list),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(Filters.routeName);
              })
        ],
      ),
      body: _screens[_selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        currentIndex: _selectedIndex,
        onTap: _selectedScreen,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? Icon(Icons.home)
                : Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? Icon(Icons.bookmark_rounded)
                : Icon(Icons.bookmark_outline_rounded),
            label: 'Watch List',
          ),
        ],
      ),
    );
  }
}
