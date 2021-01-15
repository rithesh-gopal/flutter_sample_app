
import 'package:flutter/material.dart';
import 'package:flutter_sample_app/src/views/splash/FutureBasedSplash.dart';
import 'package:flutter_sample_app/src/views/splash/TimeBasedSplash.dart';
import 'package:splashscreen/splashscreen.dart';
void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new TimeBasedSplash().build(context);
    //return new FutureBasedSplash().build(context);
  }
}
