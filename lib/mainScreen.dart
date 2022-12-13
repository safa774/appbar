import 'package:flutter/material.dart';
class  MainScreen extends StatelessWidget {
    MainScreen({Key?key}):super(key:key);
  InputBorder inputDecoration= OutlineInputBorder(
   borderRadius: BorderRadius.circular(16) ,
borderSide: BorderSide(color: Colors.grey,width: 1),
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
Row(children: [
  Container(height: 100,
  width: 100,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(100),
    image: DecorationImage(image: AssetImage('assets/image/29414e8a0cd7058645040aa2c4ae8814.jpg'))
  ),),
  //SizedBox(width:20,),
  Expanded(child: TextFormField(
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 9),
      border: inputDecoration,
    focusedBorder: inputDecoration,
    enabledBorder: inputDecoration,
    disabledBorder:inputDecoration,
    errorBorder: inputDecoration.copyWith(
    borderSide: BorderSide(color: Colors.red),



    /*border:OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: Colors.grey,width: 1),
*/)
    ),
    ),
    ),
    ],
    )],
    );


        /*
      Expanded(child: Container(height: 100, color: Colors.red, width: MediaQuery.of(context).size.width,)),

    Expanded(child:Container(height: 100, color: Colors.blue,width: 100, ),)

      //Container(height: 100, color: Colors.yellow, width: MediaQuery.of(context).size.width,),
*/


}}