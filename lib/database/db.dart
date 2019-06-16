import 'package:e_library/models/book.dart';
import 'package:e_library/models/quote.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

class DBProvider {
  DBProvider._();
  static final DBProvider database = DBProvider._();
  static Database _db;

  Future<Database> get db async {
    if (_db != null) return _db;
    _db = await init();
    return _db;
  }

  init() async {
    return openDatabase(join(await getDatabasesPath(), 'elibrary.db'),
        onCreate: (db, version) async {
      await db.execute("CREATE TABLE Book ("
          "id INTEGER PRIMARY KEY AUTOINCREMENT,"
          "title TEXT,"
          "author TEXT"
          ")");

      await db.execute("CREATE TABLE Quote ("
          "id INTEGER PRIMARY KEY AUTOINCREMENT,"
          "bookId INT,"
          "quote TEXT,"
          "FOREIGN KEY (bookId) REFERENCES Book(id) ON DELETE CASCADE"
          ")");
    }, version: 1);
  }

  Future<int> insertBook(Book book) async {
    final database = await db;
    var res = database.insert(
      'Book',
      book.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return res;
  }

  Future<List<Book>> getBooks() async {
    final database = await db;
    final List<Map<String, dynamic>> books = await database.query('Book');

    return List.generate(books.length, (i) {
      return Book(
          id: books[i]['id'],
          title: books[i]['title'],
          author: books[i]['author']);
    });
  }

  Future<int> updateBook(Book book) async {
    final database = await db;
    var res = database.update(
      'Book',
      book.toMap(),
      where: 'id = ?',
      whereArgs: [book.id],
    );
    return res;
  }

  Future<int> deleteBook(int bookId) async {
    final database = await db;
    var res = database.delete(
      'Book',
      where: 'id = ?',
      whereArgs: [bookId],
    );
    return res;
  }

  Future<int> insertQuote(Quote quote) async {
    final database = await db;
    var res = database.insert(
      'Quote',
      quote.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return res;
  }

  Future<List<Quote>> getQuotes(int bookId) async {
    final database = await db;
    final List<Map<String, dynamic>> quotes =
        await database.query('Quote', where: 'bookId = ?', whereArgs: [bookId]);

    return List.generate(quotes.length, (i) {
      return Quote(
          id: quotes[i]['id'],
          bookId: quotes[i]['bookId'],
          quote: quotes[i]['quote']);
    });
  }

  Future<int> deleteQuote(int quoteId) async {
    final database = await db;
    var res = database.delete(
      'Quote',
      where: 'id = ?',
      whereArgs: [quoteId],
    );
    return res;
  }
}
