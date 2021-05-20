import 'package:falcon_wings/model/AppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FaceBookWebVIew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new PizzaAppBar(
        child: Text('header'),
        // backgroundColor: Colors.teal,
      ),
      body: WebView(initialUrl: 'https://www.facebook.com/'),
    );
  }
}
