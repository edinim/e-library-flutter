import 'package:e_library/screens/add_book/components/form.dart';
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
          AddBookForm(
            formKey: _formKey,
          ),
        ],
      ),
    );
    ;
  }
}
