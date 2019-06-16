import 'dart:async';

import 'package:e_library/screens/add_book/components/app_bar.dart';
import 'package:e_library/screens/add_book/components/body.dart';
import 'package:flutter/material.dart';

class AddBookScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AddBookScreenState();
  }
}

class _AddBookScreenState extends State<AddBookScreen> {
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
