import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PizzaAppBar extends AppBar {
  PizzaAppBar({Key key, Widget title})
      : super(key: key, title: title, actions: <Widget>[
          new IconButton(icon: Icon(Icons.title), onPressed: () {})
        ]);
}
