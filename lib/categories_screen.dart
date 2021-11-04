import 'package:flutter/material.dart';
import 'package:meals_app/category_item.dart';
import './dummy_data.dart';

class CategorieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: DUMMY_CATEGORIES
          .map((item) => CategoryItems(item.id, item.title, item.color))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
