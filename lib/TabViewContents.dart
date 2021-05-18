import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Camera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.red,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [FaIcon(FontAwesomeIcons.camera), Text('Camera')],
          ),
        ));
  }
}

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.red,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [FaIcon(FontAwesomeIcons.searchLocation), Text('CHat')],
          ),
        ));
  }
}
