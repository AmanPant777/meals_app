import 'package:flutter/material.dart';
import 'dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routename = '/meal-details';
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal=DUMMY_MEALS.firstWhere((meal)=>meal.id==mealId);
    return Scaffold(
      appBar: AppBar(title: Text("${selectedMeal.title}")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Image.network(selectedMeal.imageUrl,fit: BoxFit.cover,),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text('Ingredients',style: TextStyle(
                fontSize: 20,
              ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(30)
              ),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              height: 200,
              width: 300,
              child: ListView.builder(
                itemBuilder: (ctx,index)=> Card(
                  color: Colors.amber,
                  elevation: 4,
      
                child: Text(selectedMeal.ingredients[index]),
              ),
               itemCount: selectedMeal.ingredients.length,
              ),
            ),
             Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(30)
              ),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              height: 200,
              width: 300,
              child: ListView.builder(
                itemCount: selectedMeal.steps.length,
                itemBuilder:(ctx,index)=>ListTile(
                  leading: CircleAvatar(
                    child: Text("${index+1}"),
                  ),
                  title: Text(selectedMeal.steps[index]),
                )
              )
            ),
      
          ],
        ),
      ),
    );
  }
}
