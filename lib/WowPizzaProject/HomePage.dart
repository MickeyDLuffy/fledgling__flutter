import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PizzaHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orange,
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
          )),
      body: ListView(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/vegetable-pizza');
                    },
                    child: Text(
                      'Vegetable Pizza',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 15),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/cheese-pizza');
                    },
                    child: Text(
                      'Cheese Pizza',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 15),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/fries');
                    },
                    child: Text(
                      'Fries',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Center(
              child: Container(
                child: Image(
                  image: NetworkImage(
                      'https://image.shutterstock.com/image-photo/krasnodar-russia-december-27-2018-260nw-1422168644.jpg'),
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Text(
                  'Hi, i am the pizza Assistant.\n What can i help you order?',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
