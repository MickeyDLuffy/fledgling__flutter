

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lombok/lombok.dart';


class PizzaAppBar extends PreferredSize {

  final Widget child;
  final double height;
  final Color color;
  final Color backgroundColor;

  PizzaAppBar({
    @required this.child,
    this.height = kToolbarHeight,
    this.color,
    this.backgroundColor = Colors.orange
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {

    return AppBar(
        backgroundColor: this.backgroundColor ?? Colors.orange,
        shadowColor: Colors.cyanAccent,
        elevation: 15,
        title: Row(
          children: [
            Text(
              'WOW Pizza',
              style: TextStyle(color: Theme.of(context).accentColor),
            ),
            Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.twitter),
                      color: Theme.of(context).accentColor,
                      onPressed: () {
                        print('Twitter clicked');
                        Navigator.pushNamed(context, '/twitter');
                      },
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.facebook),
                      color: Theme.of(context).accentColor,
                      onPressed: () {
                        Navigator.pushNamed(context, '/facebook');
                      },
                    ),
                  ],
                ))
          ],
        ));
  }
}
