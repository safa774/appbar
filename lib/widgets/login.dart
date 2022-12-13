import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class LoginPage extends StatelessWidget {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (create) => ConsumerApp(),
      child:Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          centerTitle:true,
          leading: Icon(Icons.login),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<ConsumerApp>(builder: (context, con, child) {
                return Column(
                  children:[
                  Text(
                  '${con.count}',
                  style: TextStyle(fontSize: 38),
                  )  ,
                    FloatingActionButton(
                    onPressed: () {
                  con.incrementCounter();
                },
                backgroundColor: Colors.red,
                child: Icon(Icons.add),
                )],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class ConsumerApp extends ChangeNotifier {
  int count = 0;
  incrementCounter() {
    count++;
    notifyListeners();
  }
}
