import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import '../../../main.dart';
import 'package:flutter_sample_app/src/views/ui/HomeScreen.dart';

class FutureBasedSplash extends State<MyApp>{

  Future<Widget> loadFromFuture() async {
    // Fetch any value from server
    return Future.value(new HomeScreen());
  }
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      navigateAfterFuture: loadFromFuture(),  // Which screen to show after loading
      image: new Image.asset('assets/images/flutter_logo.png'),   // Show this image during loading
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