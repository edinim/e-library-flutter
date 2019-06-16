import 'package:e_library/database/db.dart';
import 'package:e_library/models/book.dart';
import 'package:e_library/providers/book_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

AppBar appBar(BuildContext context, GlobalKey<FormState> formKey) {
  return AppBar(
    title: Text('Edit book'),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.check_circle),
        onPressed: () {
          if (formKey.currentState.validate()) {
            formKey.currentState.save();
            Book selectedBook =
                Provider.of<BookModel>(context, listen: false).selectedBook;
            DBProvider.database.updateBook(selectedBook).then((res) {
              if (res == 1) {
                Provider.of<BookModel>(context, listen: false)
                    .saveSelectedBookChanges();
              }
              Navigator.pop(context);
            });
          }
        },
      )
    ],
  );
}
