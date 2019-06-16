import 'package:e_library/models/book.dart';
import 'package:flutter/foundation.dart';

class BookModel extends ChangeNotifier {
  List<Book> _books = [];
  Book _newBook;
  Book _selectedBook;

  List<Book> get books => this._books;
  Book get selectedBook => this._selectedBook;
  Book get newBook => this._newBook;

  void setBooks(List<Book> books) {
    this._books = books.reversed.toList();
    notifyListeners();
  }

  void setSelectedBook(int index) {
    this._selectedBook = this._books[index];
  }

  void setNewBookProperty(String property, String value) {
    if (_newBook == null) {
      _newBook = new Book();
    }
    switch (property) {
      case 'title':
        _newBook.title = value;
        break;
      case 'author':
        _newBook.author = value;
        break;
    }
  }

  void addNewBookToList(int bookId) {
    _newBook.id = bookId;
    _books.insert(0, _newBook);
    _newBook = null;
    notifyListeners();
  }

  void saveSelectedBookChanges() {
    for (int i = 0; i < _books.length; i++) {
      if (_books[i].id == _selectedBook.id) {
        _books[i] = _selectedBook;
        return;
      }
    }
  }

  void removeBook(int index) {
    _books.removeAt(index);
    notifyListeners();
  }
}
