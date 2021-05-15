// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

// void main() {
//   // runApp(MaterialApp(
//   //     home: Center(
//   //   child: Text('Emperor D Luffy', textDirection: TextDirection.ltr),
//   // )));
//
//   // runApp(MaterialApp(
//   //     home: Scaffold(
//   //         backgroundColor: Colors.amberAccent,
//   //         appBar: AppBar(
//   //           title: Text('Dee is Here'),
//   //           centerTitle: true,
//   //         ),
//   //         // body: Center(
//   //         //     child: Image(
//   //         //   image: AssetImage('images/planes.jpg'),
//   //         // )),
//   //         body: SafeArea(
//   //           child: Container(
//   //             width: 500,
//   //             height: 400,
//   //             color: Colors.blueAccent,
//   //             decoration: BoxDecoration(shape: BoxShape.circle),
//   //             child: Text('Mickey D Ludffy'),
//   //           ),
//   //         ))));
//
//   runApp(MaterialApp(
//       home: Scaffold(
//           backgroundColor: Colors.amberAccent,
//           appBar: AppBar(
//             title: Text('Mickey D Luffy'),
//             centerTitle: true,
//             // backgroundColor: Colors.deepPurpleAccent[300],
//           ),
//           body: SafeArea(
//               // child: Container(
//               //   // margin: EdgeInsets.all(30),
//               //   decoration:
//               //       BoxDecoration(color: Colors.purple, shape: BoxShape.circle),
//               //   padding: EdgeInsets.all(20),
//               //   margin: EdgeInsets.only(left: 30),
//               //   width: 200,
//               //   height: 70,
//               //   // color: Colors.grey,
//               //   child: Text(
//               //     'Koenig',
//               //     textAlign: TextAlign.center,
//               //   ),
//               // ),
//               child: Icon(Icons.Icons.access_alarm_sharp,
//                   size: 50, color: Colors.red),
//               child: Column(
//                 children: [
//                   Text('Flutter Application Development'),
//                   Container(
//                     child: Text('Android Apps'),
//                     color: Colors.grey,
//                     margin: EdgeInsets.L(left: 20),
//                     height: 50,
//                     width: 70,
//                   ),
//                   Container(
//                     child: Text('IOS Application'),
//                     color: Colors.amber,
//                     margin: EdgeInsets.only(left: 20),
//                     height: 50,
//                     width: 70,
//                   )
//                 ],
//               )))));
// }
// void main() {
// runApp(MaterialApp(
//     home: Scaffold(
//         // backgroundColor: Colors.amberAccent,
//         appBar: AppBar(
//           title: Text('My First App'),
//           centerTitle: true,
//           // backgroundColor: Colors.deepPurpleAccent[300],
//         ),
//         body: Padding(
//           padding: EdgeInsets.all(8),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Icon(Icons.settings),
//               Icon(Icons.settings),
//               Icon(Icons.settings),
//               Icon(Icons.settings)
//             ],
//           ),
//         ))));

// runApp(FlutterApp());
// }

// this helps in hot reloading...just CTRL + S hot reloads
// class FlutterApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(
//               title: Text('Stateless Demo'),
//             ),
//             backgroundColor: Colors.red,
//             body: Padding()));
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

int x = 2;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var emperors = ['Dluffy', 'Nico', 'Teach'];
  var firstEmperor = 'Dluffy';
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: Text('Stateless Demo'),
    //     ),
    //     body: Padding(
    //       padding: EdgeInsets.all(8),
    //       child: Column(
    //         children: [
    //           Text('Welcome To Koenig',
    //               style: TextStyle(fontSize: 40, fontFamily: 'Open_Sans')),
    //           Container(
    //             child: ElevatedButton(
    //               child: Text('Click Me'),
    //               onPressed: () {
    //                 setState(() {
    //                   x = 2;
    //                 });
    //               },
    //             ),
    //           ),
    //           Image.asset('images/nico$x.png')
    //         ],
    //       ),
    //     ),
    //   ),
    // );
// buttons, and cards
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text('Android ATC Pizza Place')),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.satellite),
                label: Text('Satelite')),
            TextButton.icon(
                style: TextButton.styleFrom(
                    primary: Colors.black, backgroundColor: Colors.amberAccent),
                onPressed: () {},
                icon: Icon(Icons.save),
                label: Text('Save')),
            DropdownButton(
              items: emperors
                  .map((emperor) =>
                      DropdownMenuItem(value: emperor, child: Text(emperor)))
                  .toList(),
              onChanged: (String firstEMp) {
                setState(() {
                  firstEmperor = firstEMp;
                });
              },
              value: firstEmperor,
            ),
            OutlinedButton(onPressed: () {}, child: Text('Current Emperor')),
            OutlinedButton.icon(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    primary: Colors.teal,
                    textStyle: TextStyle(fontSize: 20),
                    side: BorderSide(color: Colors.teal)),
                icon: Icon(Icons.circle),
                label: Text('Circle')),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.deepPurpleAccent,
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('images/nico1.jpg'),
                    width: 50,
                    height: 100,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Book You AirTicket',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30))
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.deepPurpleAccent,
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('images/nico1.jpg'),
                    width: 50,
                    height: 100,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Book You AirTicket',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30))
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.deepPurpleAccent,
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('images/nico1.jpg'),
                    width: 50,
                    height: 100,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Book You AirTicket',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30))
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.access_alarm),
        onPressed: () {
          print('Pressed the FAB');
        },
      ),
    ));
  }
}
