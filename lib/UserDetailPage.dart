import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/User.dart';

class UserDetailPage extends StatelessWidget {
  User user;

  UserDetailPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail page'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Image(
            image: NetworkImage(user.image),
          ),
        ),
      ),
    );
  }
}
