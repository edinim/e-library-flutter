import 'package:e_library/models/quote.dart';
import 'package:e_library/providers/book_model.dart';
import 'package:e_library/providers/quote_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddQuoteForm extends StatelessWidget {
  GlobalKey<FormState> formKey;

  AddQuoteForm({@required this.formKey});

  @override
  Widget build(BuildContext context) {
    var book = Provider.of<BookModel>(context, listen: false).selectedBook;
    // TODO: implement build
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            maxLines: null,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'Please enter a quote: ',
            ),
            validator: (value) {
              if (value.trim().isEmpty) {
                return 'The quote is required';
              }
            },
            onSaved: (String value) {
              Provider.of<QuoteModel>(context, listen: false).newQuote =
                  new Quote(bookId: book.id, quote: value);
            },
          ),
        ],
      ),
    );
    ;
  }
}
