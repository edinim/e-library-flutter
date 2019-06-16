import 'package:e_library/database/db.dart';
import 'package:e_library/models/book.dart';
import 'package:e_library/providers/book_model.dart';
import 'package:e_library/screens/book_list/components/book_card/book_author.dart';
import 'package:e_library/screens/book_list/components/book_card/book_title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookCard extends StatelessWidget {
  final int index;
  final Book book;

  BookCard({@required this.index, @required this.book});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        Provider.of<BookModel>(context, listen: false).setSelectedBook(index);
        Navigator.pushNamed(context, '/book-page');
      },
      onLongPress: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return new AlertDialog(
                title: Text('Delete this book?'),
                actions: <Widget>[
                  RaisedButton(
                    color: Colors.black,
                    child: Text(
                      'No',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  RaisedButton(
                    color: Colors.black,
                    child: Text(
                      'Yes',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      DBProvider.database.deleteBook(book.id).then((bookId) {
                        if (bookId == 1) {
                          Provider.of<BookModel>(context, listen: false)
                              .removeBook(index);
                        }
                        Navigator.pop(context);
                      });
                    },
                  )
                ],
              );
            });
      },
      child: Card(
        margin: EdgeInsets.only(top: 12.0),
        elevation: 4.0,
        color: Colors.blueGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8.0),
              alignment: Alignment.topLeft,
              child: BookAuthor(
                bookId: book.id,
                author: book.author,
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              alignment: Alignment.topLeft,
              child: BookTitle(
                bookId: book.id,
                title: book.title,
              ),
            )
          ],
        ),
      ),
    );
  }
}
