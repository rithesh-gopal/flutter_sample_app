import 'package:flutter/material.dart';
import 'package:flutter_sample_app/src/views/ui/HomeScreen.dart';
import 'package:splashscreen/splashscreen.dart';

import '../../../main.dart';

class TimeBasedSplash extends State<MyApp>{

  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 10,
      navigateAfterSeconds: new HomeScreen(),
      image: new Image.asset('assets/images/flutter_logo.png'),
      photoSize: 200,
      loaderColor: Colors.white,
      styleTextUnderTheLoader : const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
     loadingText: new Text('Loading...'),
      gradientBackground: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          Colors.lightBlue,
          Colors.indigo
        ],
      ),
    );
  }

}