import 'package:e_library/screens/add_quote/components/app_bar.dart';
import 'package:e_library/screens/add_quote/components/book_title.dart';
import 'package:e_library/screens/add_quote/components/form.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  GlobalKey<FormState> _formKey;

  Body(GlobalKey<FormState> formKey) {
    this._formKey = formKey;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          BookTitle(),
          AddQuoteForm(
            formKey: _formKey,
          ),
        ],
      ),
    );
  }
}
