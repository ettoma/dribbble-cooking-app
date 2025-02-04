import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            margin: EdgeInsetsDirectional.only(top: 40),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey[300],
              ),
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 18,
            ),
            width: MediaQuery.of(context).size.width * 0.90,
            child: TextField(
              onSubmitted: (value) => print(value),
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(fontSize: 20),
                icon: Icon(
                  Icons.search_outlined,
                  color: Color(0xff66929b),
                  size: 24,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        )
      ],
    );
  }
}
