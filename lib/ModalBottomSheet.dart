import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalButtomSheetDemo extends StatefulWidget {
  const ModalButtomSheetDemo({Key key}) : super(key: key);

  @override
  _ModalButtomSheetDemoState createState() => _ModalButtomSheetDemoState();
}

class _ModalButtomSheetDemoState extends State<ModalButtomSheetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            getBottomSheet(context);
          },
          style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
          child: Text('Login'),
        ),
      ),
    );
  }

  void getBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Wrap(children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ListTile(
                    leading: Image(
                      height: 40.0,
                      image: NetworkImage(
                          'https://e7.pngegg.com/pngimages/249/19/png-clipart-google-logo-g-suite-google-guava-google-plus-company-text.png'),
                    ),
                    title: Text(
                      'Login with Google',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  ListTile(
                    leading: Image(
                      height: 40.0,
                      image: NetworkImage(
                          'https://i.pinimg.com/originals/d8/ff/30/d8ff3064a3067ac45a70f762f4977d90.png'),
                    ),
                    title: Text(
                      'Login with Facebook',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  )
                ],
              ),
            ),
          ]);
        });
  }
}
