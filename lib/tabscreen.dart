import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/categories_screen.dart';
import 'package:meals_app/favourate.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map>  _pages = [
    {'page': CategorieScreen(), 'title': 'Categories'},
    {'page': FavourateScreen(), 'title': 'Favourates'}
  ];
  int _selectpageindex = 0;
  void _selectpage(int index) {
    setState(() {
      _selectpageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(_pages[_selectpageindex]['title']),
        ),
        body: _pages[_selectpageindex]['page'],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectpage,
          backgroundColor: Colors.red,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.yellow,
          currentIndex: _selectpageindex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.category), title: Text('Category')),
            BottomNavigationBarItem(
                icon: Icon(Icons.star), title: Text('Fourates'))
          ],
        ),
      ),
    );
  }
}
