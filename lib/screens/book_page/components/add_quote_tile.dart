import 'package:e_library/models/quote.dart';
import 'package:e_library/providers/quote_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddQuoteTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text(
        'Add a quote',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      trailing: Icon(
        Icons.add_circle,
        color: Colors.white,
      ),
      onTap: () {
        Navigator.pushNamed(context, '/add-quote');
      },
    );
    ;
  }
}
