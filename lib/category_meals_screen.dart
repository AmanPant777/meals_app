import 'package:flutter/material.dart';
import 'package:meals_app/mealItem.dart';
import 'dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';

  Widget build(BuildContext context) {
    // add a null check if it can be null ! ! !
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'] as String;
    final categoryMeals = DUMMY_MEALS.where((meals) {
      return meals.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (item, index) {
          return MealItem(title: categoryMeals[index].title, 
          imageUrl: categoryMeals[index].imageUrl, 
          duration: categoryMeals[index].duration ,
          complexity: categoryMeals[index].complexity, 
          affordability: categoryMeals[index].affordability);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
