import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Flutter Sample App"),
          automaticallyImplyLeading: false
      ),
      body: new Center(
        child: new Text("Done!",
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0
          ),),
      ),
    );
  }
}


