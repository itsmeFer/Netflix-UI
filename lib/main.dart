import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart' ;
import 'package:netflix/1.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
        title: 'Clean Code',
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: 'assets/image/logos_netflix.png',
            nextScreen: page1(),
            splashTransition: SplashTransition.slideTransition,
            animationDuration: Duration(seconds: 1),
            
            backgroundColor: Colors.black54));
  }
}

