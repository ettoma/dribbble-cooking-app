import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String categoryTitle;
  // final int categoryColour;
  // final Image categoryImage;

  FoodCard(
    this.categoryTitle,
    // this.categoryColour,
    // this.categoryImage,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        color: Colors.teal[200],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 3,
        child: Column(
          children: [
            Text(
              categoryTitle,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
