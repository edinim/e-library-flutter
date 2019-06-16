import 'package:e_library/screens/edit_book/components/app_bar.dart';
import 'package:e_library/screens/edit_book/components/body.dart';
import 'package:flutter/material.dart';

class EditBookScreen extends StatelessWidget {
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: appBar(context, _formKey),
        body: Body(_formKey),
      ),
    );
  }
}
