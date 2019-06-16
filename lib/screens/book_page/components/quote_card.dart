import 'package:e_library/database/db.dart';
import 'package:e_library/models/quote.dart';
import 'package:e_library/providers/quote_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuoteCard extends StatelessWidget {
  int index;
  Quote quote;
  QuoteCard({@required this.index, @required this.quote});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onLongPress: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return new AlertDialog(
                title: Text('Delete this quote?'),
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
                      DBProvider.database.deleteQuote(quote.id).then((bookId) {
                        if (bookId == 1) {
                          Provider.of<QuoteModel>(context, listen: false)
                              .removeQuote(index);
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
        margin: EdgeInsets.all(8.0),
        child: Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(8.0),
          child: Text(
            quote.quote,
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
