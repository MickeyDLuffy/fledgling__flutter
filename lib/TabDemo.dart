import 'package:falcon_wings/TabViewContents.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabDemo extends StatelessWidget {
  const TabDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('APp bar'),
      ),
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Container(
              child: TabBar(
                labelColor: Colors.black,
                indicatorColor: Colors.red,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    icon: FaIcon(FontAwesomeIcons.searchLocation),
                  ),
                  Tab(
                    text: 'CHAT',
                  ),
                  Tab(
                    text: 'STATUS',
                  ),
                  Tab(
                    text: 'CALLS',
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
              child: TabBarView(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Camera(),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Chat(),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Camera(),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Camera(),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    ));
  }
}
