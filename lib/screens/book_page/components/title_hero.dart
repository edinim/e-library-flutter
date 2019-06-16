import 'package:e_library/models/book.dart';
import 'package:e_library/providers/book_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TitleHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Book book = Provider.of<BookModel>(context, listen: false).selectedBook;
    // TODO: implement build
    return Hero(
      tag: 'BookTitle${book.id}',
      child: Material(
        color: Colors.transparent,
        child: Text(
          book.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22.0,
            fontFamily: "SimplyRounded",
          ),
        ),
      ),
    );
  }
}
