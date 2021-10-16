import 'package:flutter/material.dart';

class CategorieScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView(
      children: [],
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
maxCrossAxisExtent: 200,
childAspectRatio: 2/3,
crossAxisSpacing: 20,
mainAxisSpacing: 20
      ),

    );
  }
}