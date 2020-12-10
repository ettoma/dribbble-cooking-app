import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String categoryTitle;
  final int categoryColour;
  final String categoryImage;

  FoodCard(
    this.categoryImage,
    this.categoryTitle,
    this.categoryColour,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        shadowColor: Colors.white,
        color: Color(categoryColour),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 1,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 6.0, bottom: 4),
              child: Image.asset(
                categoryImage,
                scale: 2.5,
              ),
            ),
            Text(
              categoryTitle,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
