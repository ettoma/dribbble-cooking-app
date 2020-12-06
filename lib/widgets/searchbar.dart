import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            color: Colors.blue,
            width: MediaQuery.of(context).size.width * 0.75,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                icon: Icon(Icons.search_outlined),
                border: InputBorder.none,
              ),
            ),
          ),
        )
      ],
    );
  }
}
