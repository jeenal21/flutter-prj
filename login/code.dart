import 'package:flutter/material.dart';
void main()
{
  runApp(Main());
}
class Main extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 35,top: 130),
            child:Text('Login',style: TextStyle(color: Colors.cyan,fontSize: 30,),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.5,
                right: 35,
                left: 35),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    TextButton(onPressed: (){},
                        child: Text('Login',style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Colors.red
                        )
                          ,))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );

  }
}


