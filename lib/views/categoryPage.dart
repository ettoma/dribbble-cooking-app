import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  final String categoryPageTitle;
  final String categoryImage;
  final int categoryColour;

  CategoryPage(this.categoryPageTitle, this.categoryImage, this.categoryColour);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  String dropdownValue;

  String alertValue = '';

  Future<String> setAlertValue(value) async {
    setState(() {
      alertValue = value;
    });
    return alertValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          widget.categoryPageTitle,
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
          color: Color(widget.categoryColour),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(widget.categoryImage),
                Text(widget.categoryPageTitle),
                DropdownButton<String>(
                  value: dropdownValue,
                  items: <String>['One', 'Two', 'Three']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      child: Text(value),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      dropdownValue = value;
                    });
                  },
                ),
                RaisedButton(
                    child: Text('Try'),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => new AlertDialog(
                          title: Text('Ciao'),
                          content: TextField(
                            onChanged: (value) => print(value),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('close'),
                            ),
                          ],
                        ),
                      );
                    })
              ],
            ),
          )),
    );
  }
}
