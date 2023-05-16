 import 'package:flutter/material.dart';
import 'package:whatsappcloneapp/screens/whatsappHome.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),()=>Navigator.pushReplacement(context, MaterialPageRoute (builder: (_)=>Whatsapphome())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         Image.network('https://static.wikia.nocookie.net/fugu-and-unagi/images/1/13/WhatsApp.png/revision/latest/thumbnail/width/360/height/360?cb=20210502084807')
          ],
        ),
      ),
    );
  }
}

