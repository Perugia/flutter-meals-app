import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("DeliMeal"),
      ),
      body: GridView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        children: DUMMY_CATEGORIES
            .map((catData) =>
                CategoryItem(catData.id, catData.title, catData.color))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 190,
          childAspectRatio: 1.6,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
