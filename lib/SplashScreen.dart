import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:shoppingonline/HomePage.dart';

import 'NavBar.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  /// creat new timer
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), timerofsplash);
  }
  ///creat class to move to the home page
  void timerofsplash(){
    Navigator.pushAndRemoveUntil(context,
      MaterialPageRoute(builder: (context)=> NavBar()),
          (Route<dynamic>route)=> false,);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child:Scaffold(
          backgroundColor: Color(0xffe5a8b5),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Container(
                  height: 122,width: 322,
                  child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage('images/lolo11.png'),),
                ),
              ),
              SizedBox(height: 130,),
        SpinKitWanderingCubes(
          color: Colors.black,
          size: 50.0,
        )
            ],
          ),

        ),
      ),
    );
  }
}
