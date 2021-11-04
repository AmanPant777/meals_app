import 'package:flutter/material.dart';
import 'package:meals_app/widgets/drawer.dart';

class FilterScreen extends StatelessWidget {
  static const routename = "/filters";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Filters'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Filter'),
      ),
    );
  }
}
