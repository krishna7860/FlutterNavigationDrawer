import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'SubClass.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.grey[100],

      ),
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        "/a" : (BuildContext context) => new SubClass("Home Page"),
      },
    );
  }

}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
        centerTitle: true,
      ),
      drawer: new Drawer(

        child: new ListView(

            children: <Widget>[
        new UserAccountsDrawerHeader(accountName:new Text("Krishna"),
        accountEmail: new Text("Rohansharma.8574@gmail.com"),
        currentAccountPicture: new CircleAvatar(
          backgroundColor: Colors.deepPurple, child: new Text("K"),),
        otherAccountsPictures: <Widget>[
          new CircleAvatar(child: new Text("C"),),
          new CircleAvatar(child: new Text("J"),),
            ],

          ),
          new ListTile(
            title: new Text("Home Page"),
            trailing: new Icon(Icons.home),
            onTap:(){
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed("/a");},
          ),
          new ListTile(
            title: new Text("Settings"),
            trailing: new Icon(Icons.settings),
          ),

          new ListTile(
            title: new Text("About"),
            trailing: new Icon(Icons.info),
          ),
          new Divider(height: 5.0),
          new ListTile(
            title: new Text("Close"),
            trailing: new Icon(Icons.close),
            onTap: () => { Navigator.of(context).pop(),},
          )
        ],
      ),
    ),
    body: new Container(
    child: new Center(
    child: new Text("Drawer Page"),
    )
    ,
    )
    ,
    );
  }
}

