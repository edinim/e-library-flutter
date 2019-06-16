import 'package:flutter/material.dart';

class BookAuthor extends StatelessWidget {
  final int bookId;
  final String author;

  BookAuthor({@required this.bookId, @required this.author});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Hero(
      tag: 'BookAuthor${bookId}',
      child: Material(
        color: Colors.transparent,
        child: Text(
          author,
          style: TextStyle(
            fontSize: 18.0,
            fontFamily: "SimplyRounded",
          ),
        ),
      ),
    );
  }
}
