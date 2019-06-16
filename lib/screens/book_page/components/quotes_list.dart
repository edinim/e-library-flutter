import 'package:e_library/providers/quote_model.dart';
import 'package:e_library/screens/book_page/components/quote_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuotesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.0),
      child: Consumer<QuoteModel>(builder: (context, quoteModel, child) {
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: quoteModel.bookQuotes.length,
          itemBuilder: (context, index) {
            return QuoteCard(
              index: index,
              quote: quoteModel.bookQuotes[index],
            );
          },
        );
      }),
    );
    ;
  }
}
