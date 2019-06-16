import 'package:e_library/screens/book_page/components/add_quote_tile.dart';
import 'package:e_library/screens/book_page/components/author_hero.dart';
import 'package:e_library/screens/book_page/components/quotes_list.dart';
import 'package:e_library/screens/book_page/components/title_hero.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AuthorHero(),
            TitleHero(),
            AddQuoteTile(),
            QuotesList(),
          ],
        ),
      ),
    );
  }
}
