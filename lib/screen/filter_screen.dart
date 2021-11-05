import 'package:flutter/material.dart';
import 'package:meals_app/widgets/drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routename = "/filters";
  final Function saveFilters;
  final Map<String, bool> _currentFilters;
  FilterScreen(this._currentFilters, this.saveFilters);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;
  @override
  initState() {
    _glutenFree = widget._currentFilters['gluten']??false;
    _lactoseFree = widget._currentFilters['lactose']??false;
    _vegetarian = widget._currentFilters[' vegetarian']??false;
    _vegan = widget._currentFilters[' vegan']??false;
    super.initState();
  }

  Widget _buildSwitch(String title, String description, bool currentValue,
      Function(bool) _updateValue) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      onChanged: _updateValue,
      subtitle: Text(description),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Filters'),
          actions: [
            IconButton(
                onPressed: () {
                  final selectedFilters = {
                    'gluten': _glutenFree,
                    'lactose': _lactoseFree,
                    'vegan': _vegan,
                    'vegetarian': _vegetarian
                  };
                  widget.saveFilters(selectedFilters);
                },
                icon: Icon(Icons.save))
          ],
        ),
        drawer: MainDrawer(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Text(' Adjust your meal settings'),
            ),
            Expanded(
                child: ListView(
              children: [
                _buildSwitch('Gluten Free', 'Includes meal only gluten free',
                    _glutenFree, (newValue) {
                  setState(() {
                    _glutenFree = newValue;
                  });
                }),
                _buildSwitch('Lactose Free', 'Includes meal only lactose free',
                    _lactoseFree, (newValue) {
                  setState(() {
                    _lactoseFree = newValue;
                  });
                }),
                _buildSwitch(
                    'Vegetarian', 'Includes meal only Vegetarian', _vegetarian,
                    (newValue) {
                  setState(() {
                    _vegetarian = newValue;
                  });
                }),
                _buildSwitch('Vegan', 'Includes meal only Vegan', _vegan,
                    (newValue) {
                  setState(() {
                    _vegan = newValue;
                  });
                })
              ],
            ))
          ],
        ));
  }
}
