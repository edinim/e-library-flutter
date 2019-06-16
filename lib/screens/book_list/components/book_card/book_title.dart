import 'package:flutter/material.dart';

class BookTitle extends StatelessWidget {
  final int bookId;
  final String title;

  BookTitle({@required this.bookId, @required this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Hero(
      tag: 'BookTitle${bookId}',
      child: Material(
        color: Colors.transparent,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 24.0,
            fontFamily: "SimplyRounded",
          ),
        ),
      ),
    );
    ;
  }
}
