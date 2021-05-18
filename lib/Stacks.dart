import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack Demo'),
        ),
        body: SafeArea(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              width: double.infinity,
              height: 300,
              child: Stack(
                children: [
                  Positioned(
                      left: 50,
                      child: Card(
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff333366),
                            borderRadius: BorderRadius.circular((10.0)),
                          ),
                          constraints:
                              BoxConstraints(maxWidth: 300, maxHeight: 220),
                        ),
                      )),
                  Positioned(
                      top: 35.0,
                      child: Image(
                        width: 130.0,
                        height: 130.0,
                        image: NetworkImage(
                            'https://i.pinimg.com/originals/f3/7b/52/f37b5273252024d60d9bb5c73bccd627.png'),
                      )),
                  Positioned(
                      top: 35.0,
                      left: 150.0,
                      child: Text('Mars',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold))),
                  Positioned(
                      top: 70.0,
                      left: 150.0,
                      child: Opacity(
                        opacity: 0.3,
                        child: Text(
                          'Milkyway Galaxy',
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                      )),
                  Positioned(
                      top: 130.0,
                      left: 150.0,
                      child: Opacity(
                        opacity: 0.6,
                        child: Image(
                          width: 17.0,
                          height: 13.0,
                          image: NetworkImage(
                              'https://cdn2.iconfinder.com/data/icons/pittogrammi/142/94-512.png'),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
