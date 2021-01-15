import 'package:flutter/material.dart';
import 'package:flutter_sample_app/src/views/ui/HomeScreen.dart';
import 'package:splashscreen/splashscreen.dart';

import '../../../main.dart';

class TimeBasedSplash extends State<MyApp>{

  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 10,          // Load Splash screen for 10 seconds.
      navigateAfterSeconds: new HomeScreen(),       // Navigate to HomeScreen after defined duration.
      image: new Image.asset('assets/images/flutter_logo.png'),   // Load this image in the splash screen
      photoSize: 200,       // Size of the photo
      loaderColor: Colors.white,      // Color of Loading spinner
      styleTextUnderTheLoader : const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
     loadingText: new Text('Loading...'),
      gradientBackground: LinearGradient(   // Background color
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