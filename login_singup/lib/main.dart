import 'package:flutter/material.dart';
import 'package:login_singup/signup.dart';
void main()
{
  runApp(Main());
}
class  Main extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      home: MyApp(),
);

  }
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Center(
            child: Form(
            key: _formKey,
            child: Column(
            children: [
              Text('Login', style: TextStyle(fontSize: 40),),
        CircleAvatar(
          radius: 80.00,
        backgroundImage:AssetImage('assets/image/img.jpg')  ,
      ),

      Container(
          margin: EdgeInsets.all(35),
          child: TextFormField(
            validator: (value){
             if(value!.length!=10){
               return'plz enter currect number';
             }
             else{
               return null;
             }
            },
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: 'number',
            ),
            keyboardType: TextInputType.number,
          )
      ),
       Container(

       ),
       ElevatedButton(onPressed: ()=>{
         if(_formKey.currentState!.validate())
           {
             print('hiii')
           }
         else
           {
             print('not valid')
           }
       },

         style: ElevatedButton.styleFrom(
           primary: Colors.red,
         elevation: 20,
         shadowColor: Colors.black,

          ), child: Text('Login'),),
              InkWell(
                onTap:( )=>{
                  Navigator .push(context,
                      MaterialPageRoute(builder: (context)=>singup()
                ),
                )
                } ,
                child: Text(
                  'Sign up',
                  style: TextStyle(fontSize: 30,backgroundColor: Colors.purpleAccent),
                ),

              )
          ],
        ),
            ),
          ),
        ),
      );

  }
}
