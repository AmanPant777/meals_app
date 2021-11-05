import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/categories_screen.dart';
import 'package:meals_app/favourate.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/drawer.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> favourateMeals;
  TabsScreen(this.favourateMeals);
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
   late List<Map> _pages;
  int _selectpageindex = 0;

  @override
  void initState() {
    _pages = [
      {'page': CategorieScreen(), 'title': 'Categories'},
      {'page': FavourateScreen(widget.favourateMeals), 'title': 'Favourates'}
    ];
    super.initState();
  }

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
        drawer: MainDrawer(),
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
