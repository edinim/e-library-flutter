class Quote {
  int id;
  int bookId;
  String quote;

  Quote({this.id, this.bookId, this.quote});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'bookId': bookId,
      'quote': quote,
    };
  }
}
