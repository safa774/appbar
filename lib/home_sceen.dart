import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemangmetn/login_secreen.dart';
import 'package:statemangmetn/widgets/custome_app_Bar.dart';
import 'package:http/http.dart' as http;
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late  Future<int> dataFuture;

  Future<int> getData() async{
    print('get data called');
    await Future.delayed(Duration(seconds: 2));
    Uri url=Uri.parse('https://randomnumberapi.com/api/v1.0/random');
    final result= await http.get(url);
    final body=jsonDecode(result.body);
    final random=(body as List).first;

    return random;
    // throw 'failed';
    // return 2;

  }
  @override
  void initState() {
    print('initsatae is called');
    // TODO: implement initState
    dataFuture=getData();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(


        appBar: customAppBar(title: 'Future'),
        body: Center(
          child: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if(snapshot.hasData){
                final data=snapshot.data;
                return Text('$data');
              }else if(snapshot.hasError){
                final error=snapshot.error;
                return Text(error.toString());
              }
              return const CircularProgressIndicator();
            }
          ),
        ),
          floatingActionButton: FloatingActionButton(onPressed: (){
            setState(() {
              print("set state");
            });
          },child: Icon(Icons.update),),


    );
  }
}

