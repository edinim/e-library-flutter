import 'package:e_library/database/db.dart';
import 'package:e_library/models/book.dart';
import 'package:e_library/providers/book_model.dart';
import 'package:e_library/screens/book_list/components/body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BookListScreenState();
  }
}

class _BookListScreenState extends State<BookListScreen> {
  void initState() {
    DBProvider.database.getBooks().then((books) {
      Provider.of<BookModel>(context, listen: false).setBooks(books);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My eLibrary'),
      ),
      body: Body(),
    );
  }
}
