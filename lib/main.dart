import 'package:flutter/material.dart';
import 'package:meals_app/categories_screen.dart';
import 'package:meals_app/category_meals_screen.dart';
import 'package:meals_app/meal_details_screen.dart';
import 'package:meals_app/tabscreen.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1)
          ),
          body2: TextStyle(
            color: Color.fromRGBO(20, 51, 51,1)
          ),
          title: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight:FontWeight.bold
          )
        )
      ),
      home:TabsScreen(),
      routes: {
        CategoryMealsScreen.routeName:(ctx)=>CategoryMealsScreen(),
        MealDetailScreen.routename:(ctx)=>MealDetailScreen()
      },
    );
  }
}