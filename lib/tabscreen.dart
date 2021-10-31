import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/categories_screen.dart';
import 'package:meals_app/favourate.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(title: Text('Meals'),
      ),
      drawer: TabBar(tabs: [
        Tab( icon: Icon(Icons.category),text: 'Categories',),
        Tab(icon: Icon(Icons.favorite),text:'Favourate')
      ],),
      body:TabBarView(children: [
        CategorieScreen(),
        FavourateScreen()
      ],)
    ),

    );
  }
}
