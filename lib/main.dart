import 'package:flutter/material.dart';

import './screens/home_tabs.dart';
import './screens/filters.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
            ),
      ),
      routes: {
        '/': (ctx) => HomeTabs(),
        Filters.routeName: (ctx) => Filters(),
      },
    );
  }
}
