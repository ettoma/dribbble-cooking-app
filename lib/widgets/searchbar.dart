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
              horizontal: 20,
            ),
            width: MediaQuery.of(context).size.width * 0.90,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                icon: Icon(
                  Icons.search_outlined,
                  color: Color(0xff66929b),
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
