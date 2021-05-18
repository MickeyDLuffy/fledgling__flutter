import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectableText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('selecting a text')),
        body: SelectableText("fkldgfdkgkldgklfgldfglfgklfklgfklgklfgklfkl"),
      ),
    );
  }
}
