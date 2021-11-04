import 'package:flutter/material.dart';

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
            color:Colors.red,
            child: Text('Cooking'),
          ),
          SizedBox(height: 12,),
          ListTile(
            leading: Icon(Icons.restaurant),
            title: Text('Meals'),

          ),
           ListTile(
            leading: Icon(Icons.settings),
            title: Text('Filter'),
          )
        ],
      ),
    );
  }
}
