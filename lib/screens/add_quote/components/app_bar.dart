import 'package:e_library/database/db.dart';
import 'package:e_library/models/quote.dart';
import 'package:e_library/providers/quote_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

AppBar appBar(BuildContext context, GlobalKey<FormState> formKey) {
  return AppBar(
    title: Text('Add a quote'),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.check_circle),
        onPressed: () {
          if (formKey.currentState.validate()) {
            formKey.currentState.save();
            Quote newQuote =
                Provider.of<QuoteModel>(context, listen: false).newQuote;
            DBProvider.database.insertQuote(newQuote).then((quoteId) {
              if (quoteId != null) {
                Provider.of<QuoteModel>(context, listen: false)
                    .saveNewQoute(quoteId);
              }
              Navigator.pop(context);
            });
          }
        },
      )
    ],
  );
}
