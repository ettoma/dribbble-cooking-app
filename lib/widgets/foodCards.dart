import 'package:flutter/material.dart';

import 'foodCard.dart';

class FoodCards extends StatelessWidget {
  final List<String> foodCategories = <String>[
    'Quickly',
    'Pizza',
    'Dessert',
    'OK',
    'True',
    'True',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 0.9,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.15,
        ),
        itemCount: foodCategories.length,
        itemBuilder: (BuildContext context, int index) {
          return FoodCard(foodCategories[index]);
        },
      ),
    );
  }
}
