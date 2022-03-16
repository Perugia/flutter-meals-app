import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {

  void selectMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectMeal,
      child: Card(),
    );
  }
}