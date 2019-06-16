import 'package:e_library/models/book.dart';
import 'package:e_library/models/quote.dart';
import 'package:flutter/foundation.dart';

class QuoteModel extends ChangeNotifier {
  List<Quote> _bookQuotes = [];
  Quote _newQuote;

  List<Quote> get bookQuotes => this._bookQuotes;
  Quote get newQuote => this._newQuote;

  void setQuotes(List<Quote> quotes) {
    this._bookQuotes = quotes.reversed.toList();
    notifyListeners();
  }

  set newQuote(Quote quote) {
    this._newQuote = quote;
  }

  void saveNewQoute(int quoteId) {
    _newQuote.id = quoteId;
    _bookQuotes.insert(0, _newQuote);
    _newQuote = null;
    notifyListeners();
  }

  void removeQuote(int index) {
    _bookQuotes.removeAt(index);
    notifyListeners();
  }
}
