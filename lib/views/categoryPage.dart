import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  final String categoryPageTitle;
  final String categoryImage;

  CategoryPage(this.categoryPageTitle, this.categoryImage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(categoryPageTitle),
        centerTitle: true,
      ),
      body: Container(
          child: Center(
        child: Column(
          children: [
            Image.asset(categoryImage),
            Text(categoryPageTitle),
          ],
        ),
      )),
    );
  }
}
