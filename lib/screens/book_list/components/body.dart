import 'package:e_library/screens/book_list/components/add_book_tile.dart';
import 'package:e_library/screens/book_list/components/book_list.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return SafeArea(
        minimum: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            AddBookTile(),
            BookList(),
          ],
        ));
  }
}
