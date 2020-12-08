import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String categoryTitle;
  final String categoryColour;
  // final Image categoryImage;

  FoodCard(
    this.categoryTitle,
    this.categoryColour,
    // this.categoryImage,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 20,
        child: Column(
          children: [
            Text(categoryTitle),
            Text(categoryColour),
            // Image(
            //   image: Image.network('https://unsplash.com/photos/IGfIGP5ONV0'),
            // ),
          ],
        ),
      ),
    );
  }
}
