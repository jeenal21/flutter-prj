import 'package:exam/register.dart';
import 'package:flutter/material.dart';
import 'package:exam/login.dart';
import 'package:exam/register.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login':(context)=>MyLogin(),
      'register':(context)=>myregister(),
    },
  )
  );
}