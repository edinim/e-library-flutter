import 'package:e_library/database/db.dart';
import 'package:e_library/models/book.dart';
import 'package:e_library/providers/book_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

AppBar appBar(BuildContext context, GlobalKey<FormState> formKey) {
  return AppBar(
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.check_circle),
        onPressed: () {
          if (formKey.currentState.validate()) {
            formKey.currentState.save();
            Book newBook =
                Provider.of<BookModel>(context, listen: false).newBook;
            DBProvider.database.insertBook(newBook).then((bookId) {
              if (bookId != null) {
                Provider.of<BookModel>(context, listen: false)
                    .addNewBookToList(bookId);
              }
              Navigator.pop(context);
            });
          }
        },
      )
    ],
  );
}
