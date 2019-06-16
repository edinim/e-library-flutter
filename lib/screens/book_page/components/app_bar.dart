import 'package:e_library/database/db.dart';
import 'package:e_library/models/quote.dart';
import 'package:e_library/providers/quote_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

AppBar appBar(BuildContext context) {
  return AppBar(
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.edit),
        onPressed: () {
          Navigator.pushNamed(context, '/edit-book');
        },
      )
    ],
  );
}
