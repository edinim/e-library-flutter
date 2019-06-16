class Book {
  int id;
  String title;
  String author;

  Book({this.id, this.title, this.author});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'author': author,
    };
  }
}
