import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(Main());
}
class Main extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyLogin(),
    );
  }
}
class MyLogin extends StatelessWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img.jpg'),fit:BoxFit.cover)),

      child: Scaffold(
        backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 35,top: 130),
            child:Text('Login',style: TextStyle(color: Colors.black,fontSize: 90,),
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
                    TextButton(onPressed: (){
                      Navigator.pushNamed(context, 'register');
                    },
                        child: Text('Login',style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Colors.black
                        )
                          ,))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
    );
  }
}


