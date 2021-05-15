import 'package:falcon_wings/Screen0.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Routing page 2'), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Route to screen 0'))
          ],
        ),
      ),
    );
  }
}
