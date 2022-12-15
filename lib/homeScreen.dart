
import 'package:flutter/material.dart';
import 'package:untitled/widget/coustom_icon.dart';
import 'package:untitled/widget/custom_tap_bar.dart';

import 'mainScreen.dart';


class homescreens extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:6
      ,

      child: Scaffold(
          appBar:AppBar(
             backgroundColor:Colors.white,
            title: Text  ('Facebook', style: TextStyle(color:Colors.blue,fontSize: 20,fontWeight:FontWeight.bold ,),),
            //leading: Icon(Icons.facebook),

            actions:[
              CustomIcon(icon:Icons.search,onTap:(){
                print('search   ');
              },),
              CustomIcon(icon:Icons.message,onTap:(){
                print('message ');
              },), ],
            bottom:CustomTabBar(),
          ),
        body: TabBarView (children: [

          MainScreen (),
      Container(
      child: Center(child: Text('Friend'),),),

      Container(
      child: Center(child: Text('watch'),),),

      Container(
      child: Center(child: Text(''),),),

      Container(
      child: Center(child: Text('notifications_rounded'),),),
      Container(
      child: Center(child: Text('menu'),),),


      ],),

            ),
    );

  }}




