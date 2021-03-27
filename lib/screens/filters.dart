import 'package:flutter/material.dart';

import '../dummy_data.dart';

class Filters extends StatefulWidget {
  static const routeName = '/filters';

  final Set<String> selectdGners;
  final Function saveFilters;

  Filters(this.selectdGners, this.saveFilters);
  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  Set<String> _selectedGeners = {};
  List<bool> _isChecked;

  void _addSelectdGeners(String gener, bool checkState) {
    if (!checkState) {
      _selectedGeners.remove(gener);
    } else {
      _selectedGeners.add(gener);
    }
  }

  @override
  void initState() {
    super.initState();
    _isChecked = List<bool>.filled(ANIME_GENERS.length, false);
    print(widget.selectdGners);
    ANIME_GENERS.asMap().forEach((index, gener) {
      if (widget.selectdGners.contains(gener)) {
        print('$index $gener');
        _isChecked[index] = true;
        _selectedGeners.add(gener);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Filters'), actions: [
        IconButton(
          icon: Icon(Icons.save),
          onPressed: () {
            widget.saveFilters(_selectedGeners);
            Navigator.of(context).pushReplacementNamed('/');
          },
        )
      ]),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1 / 0.2,
        padding: const EdgeInsets.all(10.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: [
          ...ANIME_GENERS.map((gener) {
            var index = ANIME_GENERS.indexOf(gener);
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(gener),
                Checkbox(
                  value: _isChecked[index],
                  onChanged: (bool newValue) {
                    setState(() {
                      _addSelectdGeners(gener, newValue);
                      _isChecked[index] = newValue;
                    });
                  },
                ),
              ],
            );
          }).toList(),
          Container(
            child: ElevatedButton.icon(
              label: Text('Clear Filters'),
              icon: Icon(Icons.clear),
              onPressed: () {
                _selectedGeners = {};
                widget.saveFilters(_selectedGeners);
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton.icon(
                label: Text('Save Filters'),
                icon: Icon(Icons.save),
                onPressed: () {
                  widget.saveFilters(_selectedGeners);
                  Navigator.of(context).pushReplacementNamed('/');
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
