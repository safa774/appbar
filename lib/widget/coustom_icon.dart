import 'package:flutter/material.dart';

 class CustomIcon extends StatelessWidget{
  final IconData? icon;
 final VoidCallback? onTap;
   CustomIcon({this.icon,this.onTap,Key?key }):super(key: key);
   @override
  Widget build(BuildContext context) {
   return Padding(
     padding: EdgeInsets.symmetric(horizontal: 5),
     child: InkWell(
       borderRadius: BorderRadius.circular(100),
       onTap:onTap,


       child: Container(
         //margin:EdgeInsets.symmetric(vertical: 5),
         padding: EdgeInsets.symmetric(horizontal: 20),
         decoration: BoxDecoration(
           color: Colors.grey.shade100,borderRadius: BorderRadius.circular(100),
         ),
         child: Icon(icon,color: Colors.black,size: 25,),
       ),

     ),
   );
  }

}








