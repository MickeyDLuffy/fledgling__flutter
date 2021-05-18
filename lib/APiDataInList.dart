import 'dart:convert';

import 'package:falcon_wings/ListStyle.dart';
import 'package:falcon_wings/UserDetailPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'model/User.dart';

class ApiDataInList extends StatefulWidget {
  const ApiDataInList({Key key}) : super(key: key);

  @override
  _ApiDataInListState createState() => _ApiDataInListState();
}

class _ApiDataInListState extends State<ApiDataInList> {
  Future<List<User>> getUser() async {
    // var data =
    //     await http.get(Uri.parse('https://randomuser.me/api/?results=10'));
    // var jsonUsers = json.decode(data.body);
    //
    // List<User> users = [];
    //
    // for (var user in jsonUsers.results) {
    //   var fullname = user.name.first + user.name.last;
    //   var uuid = user.login.uuid;
    //   var email = user.mail;
    //   var picture = user.picture.large;
    //
    //   User mainUser = new User(uuid, email, fullname, picture);
    //   users.add(mainUser);
    // }
    //
    // return users;

    var data =
        await http.get(Uri.parse('https://randomuser.me/api/?results=10'));
    var jsonData = json.decode(data.body);

    List<User> users = [];
    for (var u in jsonData['results']) {
      var fullname = u['name']['first'] + " " + u['name']['last'];
      var uuid = u['login']['uuid'];
      var email = u['email'];
      var picture = u['picture']['large'];

      User user = User(uuid, email, fullname, picture);
      users.add(user);
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Api calls'),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            'https://randomuser.me/api/portraits/men/75.jpg'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'John Cena',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.person, color: Colors.black),
                title: Text('Your Profile'),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.inbox, color: Colors.black),
                title: Text('Your Inbox'),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.assessment, color: Colors.black),
                title: Text('Your Dashboard'),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.settings, color: Colors.black),
                title: Text('Your Settings'),
              )
            ],
          ),
        ),
        body: Container(
          child: FutureBuilder(
            future: getUser(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Container(
                  child: Center(
                    child: Center(
                      child: Text('Loading ...'),
                    ),
                  ),
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 8, top: 8),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(snapshot.data[index].image),
                        ),
                        title: Text(
                          snapshot.data[index].fullName,
                          style: TextStyle(fontSize: 17),
                        ),
                        subtitle: Text(snapshot.data[index].email),
                        trailing: FaIcon(FontAwesomeIcons.arrowCircleRight),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      UserDetailPage(snapshot.data[index])));
                        },
                      ),
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
