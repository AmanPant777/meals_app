import 'package:flutter/material.dart';
import 'package:meals_app/categories_screen.dart';
import 'package:meals_app/category_meals_screen.dart';
import 'package:meals_app/dummy_data.dart';
import 'package:meals_app/meal_details_screen.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/screen/filter_screen.dart';
import 'package:meals_app/tabscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false
  };
  List<Meal> _availableMeals = DUMMY_MEALS;
  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;
      _availableMeals = DUMMY_MEALS.where((meal) {
        if (_filters['gluten']==true && !meal.isGlutenFree) {
          return false;
        }
        if (_filters['lactose']==true && !meal.isLactoseFree) {
          return false;
        }
        if (_filters['vegan']==true && !meal.isVegan) {
          return false;
        }
        if (_filters['vegetarian']==true && !meal.isVegetarian) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              title: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold))),
      home: TabsScreen(),
      routes: {
        CategoryMealsScreen.routeName: (ctx) =>
            CategoryMealsScreen(_availableMeals),
        MealDetailScreen.routename: (ctx) => MealDetailScreen(),
        FilterScreen.routename: (ctx) => FilterScreen(_filters,_setFilters)
      },
    );
  }
}
