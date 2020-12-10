import 'package:dribbble_recipe_app/widgets/bottomNav.dart';
import 'package:dribbble_recipe_app/widgets/foodCards.dart';
import 'package:dribbble_recipe_app/widgets/searchbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cooking app',
      theme:
          ThemeData(primaryColor: Colors.white, backgroundColor: Colors.white),
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'What to eat?',
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.filter_alt_outlined),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          SearchBar(),
          FoodCards(),
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
