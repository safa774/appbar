import 'package:flutter/material.dart';
import 'login.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    routes: {'login': (BuildContext context) => LoginPage()}));

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed('login');
              },
              child: Text('Login'),
              color: Colors.red,
            ),
          )
        ],
      ),
    ));
  }
}

