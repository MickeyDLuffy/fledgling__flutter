import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Firestore extends StatefulWidget {
  const Firestore({Key key}) : super(key: key);

  @override
  _FirestoreState createState() => _FirestoreState();
}

class _FirestoreState extends State<Firestore> {
  List<Widget> dataListWidget(AsyncSnapshot snapshot) {
    return snapshot.data.docs.map<Widget>((document) {
      return ListTile(
        title: Text(document['name']),
        subtitle: Text(document['age']),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Container(
          child: StreamBuilder(
            stream:
                FirebaseFirestore.instance.collection('firestore').snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView(
                children: dataListWidget(snapshot),
              );
            },
          ),
        ),
      ),
    );
  }
}
