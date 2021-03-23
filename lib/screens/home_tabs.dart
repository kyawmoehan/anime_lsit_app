import 'package:flutter/material.dart';

import './anime_list.dart';
import './favourites.dart';
import './filters.dart';

class HomeTabs extends StatefulWidget {
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
        'page': AnimeList(),
        'title': 'Anime List',
      },
      {
        'page': Favourites(),
        'title': 'Favourites',
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
                Navigator.of(context).pushNamed(Filters.routeName);
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
                ? Icon(Icons.star)
                : Icon(Icons.star_outline),
            label: 'Favourites',
          ),
        ],
      ),
    );
  }
}
