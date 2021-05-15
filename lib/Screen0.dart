import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screen1.dart';

class Screen0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Routing'), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Screen1()));
                },
                child: Text('Route to screen 1'))
          ],
        ),
      ),
    ));
  }
}
