import 'package:e_library/providers/book_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var book = Provider.of<BookModel>(context, listen: false).selectedBook;
    // TODO: implement build
    return Text(
      book.title,
      style: TextStyle(
        fontSize: 22.0,
        fontFamily: "SimplyRounded",
      ),
    );
    ;
  }
}
