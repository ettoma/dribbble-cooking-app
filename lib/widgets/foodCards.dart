import 'package:flutter/material.dart';

import 'foodCard.dart';

class FoodCards extends StatelessWidget {
  final List<String> foodCategories = <String>[
    'Quickly',
    'Breakfast',
    'Dessert',
    'Pasta',
    'Vegetarian',
    'Keto',
  ];
  final List<int> categoryColours = <int>[
    0xBFF0C04E,
    0xBF66929B,
    0xBFEB5f4A,
    0xBFB3BBBC,
    0xBFEDEDED,
    0xBFC94418,
  ];
  final List<String> categoryImage = <String>[
    'assets/images/burger.png',
    'assets/images/soup.png',
    'assets/images/bowl.png',
    'assets/images/pasta.png',
    'assets/images/fries.png',
    'assets/images/lobster.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 0.9,
      child: GridView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.15,
        ),
        itemCount: foodCategories.length,
        itemBuilder: (BuildContext context, int index) {
          return FoodCard(categoryImage[index], foodCategories[index],
              categoryColours[index]);
        },
      ),
    );
  }
}
