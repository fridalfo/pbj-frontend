import 'package:flutter/material.dart';
import 'dart:async';
import 'package:pbj_app/landing/landingpage_view.dart';
import 'package:pbj_app/constant.dart';
import 'package:pbj_app/login/loginpage_view.dart';

class LauncherPage extends StatefulWidget {
  @override
  _LauncherPageState createState() => new _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override
  void initState(){
    super.initState();
    startLaunching();
  }

  startLaunching() async{
    var duration = const Duration(seconds: 5);
    return new Timer(duration, (){
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_){
        return new LoginPage();
      }));
    });
  }

  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("assets/bg_splash.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: new Center(
        child: new Image.asset(
          "assets/splash_screen.png",
          height: 200,
          width: 400,
        ),
      ),
    );
  }
}