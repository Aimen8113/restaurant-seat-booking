import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mainproject_cdm/view/homepage/homepage.dart';
import 'package:mainproject_cdm/view/localstorage.dart';
import 'package:mainproject_cdm/view/login/login.dart';
import 'package:mainproject_cdm/view_model/bottombar/bottom.dart';

String? token;
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  splashData() async {
    token = await LocalStorage.getData();
    print("????????????////////$token");
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => token == null ? Loginpage() :MainPage(),
    ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds:3), splashData);
  }

  @override
  Widget build(BuildContext context) {
    return Container(decoration:BoxDecoration(image: DecorationImage(image:AssetImage("assets/Splash.jpg"))),);
  }
}
