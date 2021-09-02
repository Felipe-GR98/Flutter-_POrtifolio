import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:my_profile/pages/homepage.dart';


void main() {
  runApp(App());
}

class App  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu Portifolio',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        
      ),
      home:AnimatedSplashScreen(
        splash: Icon(Icons.person,size: 50.0,),
        duration: 3000,
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.indigoAccent,
        nextScreen: HomePage()
        )
      
    );
  }
}