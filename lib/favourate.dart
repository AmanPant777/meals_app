import 'package:flutter/cupertino.dart';
import 'package:meals_app/mealItem.dart';
import 'package:meals_app/models/meal.dart';

class FavourateScreen extends StatelessWidget {
  final List<Meal> favourateMeals;
  FavourateScreen(this.favourateMeals);
  @override
  Widget build(BuildContext context) {
    if (favourateMeals.isEmpty) {
      return Container(
        child: Text('No Favourate added'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (item, index) {
          return MealItem(
            id: favourateMeals[index].id,
            title: favourateMeals[index].title,
            imageUrl: favourateMeals[index].imageUrl,
            duration: favourateMeals[index].duration,
            complexity: favourateMeals[index].complexity,
            affordability: favourateMeals[index].affordability,
          );
        },
        itemCount: favourateMeals.length,
      );
    }
  }
}
