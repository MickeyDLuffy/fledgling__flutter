import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Firebase application'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/create-account');
                  },
                  child: Text(
                    'Create account',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/firestore');
                  },
                  child: Text(
                    'My Cloud Firestore',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
