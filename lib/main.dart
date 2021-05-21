import 'package:falcon_wings/screens/Firestore.dart';
import 'package:falcon_wings/screens/HomePage.dart';
import 'package:falcon_wings/screens/login-screen.dart';
import 'package:falcon_wings/screens/new-account.dart';
import 'package:falcon_wings/screens/service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: Homepage(),
    routes: {
      '/create-account': (context) => NewAccountScreen(),
      '/login': (context) => LoginScreen(),
      '/service': (context) => Service(),
      '/home': (context) => Homepage(),
      '/firestore':(context) => Firestore()
    },
  ));
}
