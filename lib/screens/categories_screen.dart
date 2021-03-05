import 'package:flutter/material.dart';
import 'file:///D:/projects/flutterapps/meals_app/lib/widgets/category_item.dart';
import 'file:///D:/projects/flutterapps/meals_app/lib/data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      children: DUMMY_CATEGORIES.map((catData) {
        return CategoryItem(
            id: catData.id, title: catData.title, color: catData.color);
      }).toList(),
    );
  }
}
