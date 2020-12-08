import 'package:flutter/material.dart';

import 'foodCard.dart';

class FoodCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FoodCard(
        'Ciao',
        'Ettore',
      ),
    );
  }
}
