import 'package:flutter/material.dart';
class CustomTabBar extends StatelessWidget implements PreferredSize{
  const CustomTabBar({Key?key}):super(key:key);

   @override
  Widget build(BuildContext context) {
  return TabBar(
    unselectedLabelColor: Colors.grey,
    unselectedLabelStyle: TextStyle(color: Colors.grey )
    ,tabs:
  [Tab(icon:Icon( Icons.home,color: Colors.blue,),),
    Tab(icon:Icon( Icons.people,color: Colors.blue,),),
    Tab(icon:Icon( Icons.video_call,color: Colors.blue,),),
    Tab(icon:Icon( Icons.person,color: Colors.blue,),),
    Tab(icon:Icon( Icons.notifications_rounded,color: Colors.blue,),),
    Tab(icon:Icon( Icons.menu,color: Colors.blue,),),

  ],

  );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(70);

}