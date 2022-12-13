
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_loc';
import'package:untitled/main.dart';
import 'homeScreen.dart';

void main() {
  runApp(MyApp());}
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /* supportedLocales: [
       Locale('ar'),
     ],*//*
localizationsDelegates: [
GlobalWidgetsLocalizations.delgate,
GlobalMaterialLocalizations.delgate,
GlobalCupertinoLocalizations.delgate,
],*/
      home: homescreens(),
    );
  }

}

