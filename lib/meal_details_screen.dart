import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static const routename = '/meal-details';
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text("meal Id $mealId")),
      body: Center(
        child: Text('gdfg'),
      ),
    );
  }
}
