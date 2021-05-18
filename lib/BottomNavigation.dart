import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigation createState() => _BottomNavigation();
}

class _BottomNavigation extends State<BottomNavigation> {
  int _currentIndex = 0;
  final tabs = [
    Center(
      child: Text('Home'),
    ),
    Center(
      child: Text('Search'),
    ),
    Center(
      child: Text('Camera'),
    ),
    Center(
      child: Text('Profile'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('APp bar'),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Colors.blue,
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              backgroundColor: Colors.blue,
              label: 'Home'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    ));
  }
}
