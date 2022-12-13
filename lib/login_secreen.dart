import 'package:flutter/material.dart';
import 'package:statemangmetn/widgets/custome_app_Bar.dart';

class LoginSrceen extends StatelessWidget {
  const LoginSrceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'LoginScreen',icon: Icons.verified_user),
      body: StreamBuilder<int>(
        stream: Stream.periodic(Duration(seconds: 1),(a){return a;}),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data! <10) {

            return Center(child: Text('${snapshot.data}'),);
          } else if(snapshot.hasError) {
                       Center(
                         child: Text("${snapshot.error}"),
                       ) ;
          }
          else{
            return Center(child:(snapshot.connectionState==ConnectionState.done ||snapshot.connectionState==ConnectionState.waiting)? CircularProgressIndicator():Text('downlaod sucssufly'));
          }
          return Center(
            child: ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },child: Icon(Icons.arrow_back),),
          );
        }
      ),
    );
  }
}
