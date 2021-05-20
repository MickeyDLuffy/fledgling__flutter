import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email;
  String password;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Padding(
          padding: EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        'Email Address',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 220,
                        child: TextField(
                          controller: emailController,
                          onChanged: (value) {
                            email = value;
                          },
                          style: TextStyle(fontSize: 20, color: Colors.teal),
                          // keyboardType: K,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Password',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 220,
                        child: TextField(
                          controller: passwordController,
                          obscureText: true,
                          onChanged: (value) {
                            password = value;
                          },
                          style: TextStyle(fontSize: 20, color: Colors.teal),
                          cursorColor: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Container(
                      width: 100,
                      child: ElevatedButton(
                        child: Text('Login '),
                        onPressed: () async {
                          try {
                            print(email);
                            final newUser =
                                await auth.signInWithEmailAndPassword(
                                    email: emailController.text,
                                    password: passwordController.text);
                            if (newUser != null) {
                              print(newUser);
                              passwordController.clear();
                              Navigator.pushNamed(context, '/service');
                            }
                          } catch (e) {
                            print(e);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}