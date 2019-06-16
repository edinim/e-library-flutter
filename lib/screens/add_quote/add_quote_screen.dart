import 'package:e_library/screens/add_quote/components/app_bar.dart';
import 'package:e_library/screens/add_quote/components/body.dart';
import 'package:flutter/material.dart';

class AddQuoteScreen extends StatelessWidget {
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
