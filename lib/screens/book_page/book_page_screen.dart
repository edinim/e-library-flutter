import 'package:e_library/database/db.dart';
import 'package:e_library/providers/book_model.dart';
import 'package:e_library/providers/quote_model.dart';
import 'package:e_library/screens/book_page/components/app_bar.dart';
import 'package:e_library/screens/book_page/components/body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookPageScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BookPageScreenState();
  }
}

class _BookPageScreenState extends State<BookPageScreen> {
  void initState() {
    var book = Provider.of<BookModel>(context, listen: false).selectedBook;

    DBProvider.database.getQuotes(book.id).then((quotes) {
      Provider.of<QuoteModel>(context, listen: false).setQuotes(quotes);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: appBar(context),
        body: Body(),
      ),
    );
  }
}
