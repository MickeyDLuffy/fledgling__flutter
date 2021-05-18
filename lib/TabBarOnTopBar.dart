import 'package:falcon_wings/TabViewContents.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabDemoOnTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 4,
            child: Scaffold(
                appBar: AppBar(
                  titleTextStyle: TextStyle(color: Colors.white),
                  title: Text(
                    'Dees',
                  ),
                  bottom: TabBar(
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
                body: TabBarView(
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
                ))));
  }
}
