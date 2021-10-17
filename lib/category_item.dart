import 'package:flutter/material.dart';
import 'package:meals_app/category_meals_screen.dart';

class CategoryItems extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  void selectedCategory(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed(CategoryMealsScreen.routeName,arguments: {'id':id,'title':title});
  }

  CategoryItems(this.id,this.title, this.color);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectedCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
