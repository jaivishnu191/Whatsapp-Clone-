import 'package:flutter/material.dart';
import 'package:whatsappcloneapp/screens/splashscreen.dart';
void main(List<String> args) {
runApp(const MyApp());  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData(
      primaryColor: const Color (0xff075E54) ,

     

      textTheme: const TextTheme(
        button: TextStyle(color: Colors.white),
         bodyText1: TextStyle(color: Colors.black),
        subtitle1: TextStyle(color: Colors.white)
      )

      
      ),
    );
  }
}


