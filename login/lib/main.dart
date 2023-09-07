import 'package:flutter/material.dart';
import 'package:login/code.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login':(context)=>MyLogin(),
    },
  )
  );
}