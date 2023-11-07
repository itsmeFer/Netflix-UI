import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:netflix/profileferdi.dart';

class loadingprofile extends StatefulWidget {
  const loadingprofile({super.key});

  @override
  State<loadingprofile> createState() => _loadingprofileState();
}

class _loadingprofileState extends State<loadingprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
          child: AnimatedSplashScreen(
        splash:
            LoadingAnimationWidget.fourRotatingDots(color: Colors.red, size: 80),
        nextScreen: ferdi(),
        animationDuration: Duration(seconds: 5),

        backgroundColor: Colors.black,
        
      )),
    );
  }
}
