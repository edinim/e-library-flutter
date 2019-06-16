import 'package:e_library/providers/book_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditBookForm extends StatelessWidget {
  GlobalKey<FormState> formKey;

  EditBookForm({@required this.formKey});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var selectedBook =
        Provider.of<BookModel>(context, listen: false).selectedBook;

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            initialValue: selectedBook.title,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'Enter book title: ',
            ),
            validator: (value) {
              if (value.trim().isEmpty) {
                return 'Book title is required';
              }
            },
            onSaved: (String value) {
              Provider.of<BookModel>(context, listen: false)
                  .selectedBook
                  .title = value;
            },
          ),
          TextFormField(
            initialValue: selectedBook.author,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'Enter book author: ',
            ),
            validator: (value) {
              if (value.trim().isEmpty) {
                return 'Book author is required';
              }
            },
            onSaved: (String value) {
              Provider.of<BookModel>(context, listen: false)
                  .selectedBook
                  .author = value;
            },
          ),
        ],
      ),
    );
  }
}
