import 'package:flutter/material.dart';
import 'package:meals_app/screen/filter_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            color: Colors.red,
            child: Text('Cooking'),
          ),
          SizedBox(
            height: 12,
          ),
          ListTile(
            leading: Icon(Icons.restaurant),
            title: Text('Meals'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Filter'),
            onTap: (){ Navigator.of(context).pushReplacementNamed(FilterScreen.routename);},
          )
        ],
      ),
    );
  }
}
