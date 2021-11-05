import 'package:flutter/material.dart';
import 'package:meals_app/widgets/drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routename = "/filters";

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

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
                _buildSwitch('Vegetarian', 'Includes meal only Vegetarian',
                    _vegetarian, (newValue) {
                  setState(() {
                    _vegetarian = newValue;
                  });
                }),
                _buildSwitch('Vegan', 'Includes meal only Vegan',
                    _vegan, (newValue) {
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
