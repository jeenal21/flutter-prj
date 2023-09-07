import 'package:flutter/material.dart';
import 'main.dart';

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context)=>Main()),
        );
        return false;
      },
      child: Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
        body: Center(
          child: Text('Welcome to home page'),
        )
      ),
    );
  }
}
