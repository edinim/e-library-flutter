import 'package:e_library/providers/book_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddBookForm extends StatelessWidget {
  GlobalKey<FormState> formKey;

  AddBookForm({@required this.formKey});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
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
                  .setNewBookProperty('title', value);
            },
          ),
          TextFormField(
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
                  .setNewBookProperty('author', value);
            },
          ),
        ],
      ),
    );
  }
}
