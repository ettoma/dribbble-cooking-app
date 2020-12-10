import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

int _currentIndex = 0;

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.grey[100],
      selectedItemColor: Colors.grey[900],
      onTap: (value) {
        setState(() {
          _currentIndex = value;
        });
      },
      currentIndex: _currentIndex,
      elevation: 20,
      items: [
        BottomNavigationBarItem(
          label: '',
          activeIcon: Icon(
            Icons.fastfood,
            size: 30,
          ),
          icon: Icon(
            Icons.fastfood_outlined,
            size: 25,
            color: Colors.grey[400],
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          activeIcon: Icon(
            Icons.menu_book_outlined,
            size: 30,
          ),
          icon: Icon(
            Icons.menu_book,
            size: 25,
            color: Colors.grey[400],
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.search_sharp,
            size: 30,
          ),
          label: '',
          icon: Icon(
            Icons.search_outlined,
            size: 25,
            color: Colors.grey[400],
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          activeIcon: Icon(
            Icons.favorite,
            size: 30,
          ),
          icon: Icon(
            Icons.favorite_outline,
            size: 25,
            color: Colors.grey[400],
          ),
        ),
      ],
    );
  }
}
