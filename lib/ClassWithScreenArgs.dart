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
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(args.message),
          Padding(
            padding: EdgeInsets.all(8),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'Approved');
              },
              child: Text('Approve'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'Rejected');
              },
              child: Text('Reject'),
            ),
          ),
        ],
      )),
    );
  }
}
