import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalButtomSheetDemo extends StatefulWidget {
  const ModalButtomSheetDemo({Key key}) : super(key: key);

  @override
  _ModalButtomSheetDemoState createState() => _ModalButtomSheetDemoState();
}

class _ModalButtomSheetDemoState extends State<ModalButtomSheetDemo> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
            var sheetController = _scaffoldKey.currentState
                .showBottomSheet((context) => BottomSheetWidget());
            sheetController.closed.then((value) {
              print('closed');
            });
          },
          // _bottomSheet(context);

          style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
          child: Text('Login'),
        ),
      ),
    );
  }
}

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.amberAccent,
      child: Center(
        child: Column(
          children: [
            Text('Koenig SOlutions'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('closed'),
            )
          ],
        ),
      ),
    );
  }
}
