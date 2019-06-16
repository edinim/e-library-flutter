import 'package:e_library/models/book.dart';
import 'package:e_library/providers/book_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthorHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Book book = Provider.of<BookModel>(context, listen: false).selectedBook;
    // TODO: implement build
    return Hero(
      tag: 'BookAuthor${book.id}',
      child: Material(
        color: Colors.transparent,
        child: Container(
          margin: EdgeInsets.only(top: 8.0),
          child: Text(
            book.author,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: "SimplyRounded",
            ),
          ),
        ),
      ),
    );
  }
}
