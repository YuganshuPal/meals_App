import 'dart:math';

import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  //const FavoritesScreen({Key? key}) : super(key: key);
  final List<Meal> favoriteMeals;
  FavoritesScreen(this.favoriteMeals);
  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('You have no Favorites yet!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
              id: favoriteMeals[index].id,
              title: favoriteMeals[index].title,
              affordability: favoriteMeals[index].affordability,
              complexity: favoriteMeals[index].complexity,
              duration: favoriteMeals[index].duration,
              imageUrl: favoriteMeals[index].imageUrl);
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
