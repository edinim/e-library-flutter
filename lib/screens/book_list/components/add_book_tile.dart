import 'package:e_library/models/book.dart';
import 'package:e_library/providers/book_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddBookTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text(
        'Add a book',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      trailing: Icon(
        Icons.add_circle,
        color: Colors.black,
      ),
      onTap: () {
        Navigator.pushNamed(context, '/add-book');
      },
    );
  }
}
