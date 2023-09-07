import 'package:flutter/material.dart';
void main()
{
        runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context){
return MaterialApp(
  home: Scaffold(
appBar: AppBar(
title: Text('column row2'),
),
    body: Column(

      children: [
        Row(
    children:[
    Container(
    padding: EdgeInsets.fromLTRB(183.3, 215, 139, 216),
    color: Colors.deepOrange,
    child: Text(
      '8',textAlign: TextAlign.center,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),

  ),
    ],
),

  Row(
    children: [
      Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(94, 137, 97, 136),
            color: Colors.lightBlueAccent,
            child: Text('5',textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
          )
        ],
      ),
      Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(24, 23, 55, 23),
                        color: Colors.green,
                        child: Text('5',textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                      )
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(66.3, 62, 42, 61),
                    color: Colors.orange,
                    child: Text('5',textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(66.3, 62, 42, 61),
                color: Colors.purple,
                child: Text('5',textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
              )
            ],
          )
        ],
      )
    ],

  )

      ],
    ),
  ),
);
  }

}
