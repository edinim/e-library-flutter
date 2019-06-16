import 'package:e_library/providers/book_model.dart';
import 'package:e_library/screens/book_list/components/book_card/book_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child: Consumer<BookModel>(builder: (context, bookModel, child) {
        return ListView.builder(
          itemCount: bookModel.books.length,
          itemBuilder: (context, i) {
            return BookCard(index: i, book: bookModel.books[i]);
          },
        );
      }),
    );
  }
}
