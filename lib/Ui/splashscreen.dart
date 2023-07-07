import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'loginpage.dart';
import 'optionscreen.dart';





class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  Future<void>checkuserlogin()async
  {
    final preferences=await SharedPreferences.getInstance();

    Future.delayed(const  Duration(seconds: 5),(){
      if(!preferences.containsKey('Token'))
      {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
            builder: (context) => const  LoginPage()), (
            route) => false);
      }
      else
      {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
            builder: (context) => const  OptionScreen()), (
            route) => false);
      }
    });}


  @override
  void initState() {
    checkuserlogin();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var mwidth = MediaQuery.of(context).size.width;
    var mheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: mwidth * 0.45,
          height: mheight * 0.21,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100)),
          child: Image.asset('assets/splash.png'),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}