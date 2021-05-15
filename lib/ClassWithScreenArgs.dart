import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ScreenArguments.dart';

class ClassWithScreenArgs extends StatelessWidget {
  static const routeName = '/extractArgs';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
        centerTitle: true,
      ),
      body: Center(
        child: Text(args.message),
      ),
    );
  }
}
