import 'package:flutter/material.dart';

class Filters extends StatefulWidget {
  static const routeName = '/filters';
  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
      ),
      body: Center(
        child: Text('filters'),
      ),
    );
  }
}
