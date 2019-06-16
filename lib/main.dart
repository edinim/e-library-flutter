import 'package:e_library/providers/book_model.dart';
import 'package:e_library/providers/quote_model.dart';
import 'package:e_library/screens/add_book/add_book_screen.dart';
import 'package:e_library/screens/add_quote/add_quote_screen.dart';
import 'package:e_library/screens/book_list/book_list_screen.dart';
import 'package:e_library/screens/book_page/book_page_screen.dart';
import 'package:e_library/screens/edit_book/edit_book_screen.dart';
import 'package:e_library/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(builder: (context) => BookModel()),
      ChangeNotifierProvider(builder: (context) => QuoteModel()),
    ],
    child: ELibrary(),
  ));
}

class ELibrary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eLibrary',
      theme: appTheme(),
      initialRoute: '/',
      routes: {'/': (context) => BookListScreen()},
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/add-book':
            return new MaterialPageRoute(
              builder: (context) => new AddBookScreen(),
            );
          case '/book-page':
            return new MaterialPageRoute(
              builder: (context) => new BookPageScreen(),
            );
          case '/add-quote':
            return new MaterialPageRoute(
              builder: (context) => new AddQuoteScreen(),
            );
          case '/edit-book':
            return new MaterialPageRoute(
              builder: (context) => new EditBookScreen(),
            );
        }
      },
    );
  }
}
