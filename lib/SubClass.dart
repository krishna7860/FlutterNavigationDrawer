import 'package:flutter/material.dart';
class SubClass extends StatelessWidget {
  final String title;
  SubClass(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
       child: new Text(title),
      ),
    );
  }
}
