import 'package:falcon_wings/ClassWithScreenArgs.dart';
import 'package:falcon_wings/ScreenArguments.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Delievery'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/screen1');
                },
                child: Text('Go to Screen 1')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/screen2');
                },
                child: Text('Got to screen 2')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ClassWithScreenArgs.routeName,
                      arguments:
                          ScreenArguments('Flutter', 'Welcome here Maities'));
                },
                child: Text('Sending arguments across pages')),
          ],
        ),
      ),
    );
  }
}
