

import 'package:falcon_wings/WowPizzaProject/CheesePizza.dart';
import 'package:falcon_wings/WowPizzaProject/FaceBookWebVIew.dart';
import 'package:falcon_wings/WowPizzaProject/Fries.dart';
import 'package:falcon_wings/WowPizzaProject/TwitterWebView.dart';
import 'package:falcon_wings/WowPizzaProject/VegetablePizza.dart';
import 'package:flutter/material.dart';

import 'ModalBottomSheet.dart';
import 'WowPizzaProject/HomePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PizzaHomePage(),
    routes: {
      '/facebook': (context) => FaceBookWebVIew(),
      '/twitter': (context) => TwitterWebVIew(),
      '/cheese-pizza': (context) => CheesePizza(),
      '/vegetable-pizza': (context) => VegetablePizza(),
      '/fries': (context) => Fries()
    },
    theme: ThemeData(
        primaryColor: Colors.orange[500],
        accentColor: Colors.white,
        textTheme: TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            bodyText2: TextStyle(fontSize: 14.0))),
  ));
}
