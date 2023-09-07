import 'package:flutter/material.dart';
import 'package:pra1/login.dart';
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
  MyApp({Key? key}) : super(key: key);
  final _formKey=GlobalKey<FormState>();
  var nmText =TextEditingController();
  var numText=TextEditingController();
  var emailText=TextEditingController();
  var passText=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
appBar: AppBar(
),
        body: SafeArea(
          child: Center(
            child: Form(
                key: _formKey,
                child: Column(
                    children: [
                    Text('Login',
                      style: TextStyle(fontSize: 40),),
              Container(
            width: 300,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               TextFormField(
                 controller:nmText ,
                 decoration: InputDecoration(
                   hintText: 'Enter name',
                   focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(21),
                       borderSide: BorderSide(
                           color: Colors.purple,
                         width: 2,
                       )
                   ),

                   border: OutlineInputBorder(
                   ),
                 ),
                 validator: (value) {
                   if (value == null ||
                       value.isEmpty ||
                       !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                     //allow upper and lower case alphabets and space
                     return "Enter Correct Name";
                   }
                   else
                   {
                     return null;
                   }
                 },
                 keyboardType: TextInputType.name,
               ),
               Container(height: 11,),

               TextFormField(
                 controller: numText,
                 decoration: InputDecoration(
                  hintText: 'Enter number',
                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(21),
                         borderSide: BorderSide(
                             color: Colors.green
                         )
                     ),
                   //suffixText: 'Enter number',
                   suffixIcon: IconButton(
                     icon: Icon(Icons.remove_red_eye),
                     onPressed: (){},
                   ),
                   prefixIcon:Icon(Icons.phone,color: Colors.green,),
                 ),
                 validator: (value){
    if (value == null ||
    value.isEmpty||
    !RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(value))
    {
    return 'Enter correct Phone Number';
    }
    else
    {
    return null;
    }

                 },
                 keyboardType: TextInputType.phone,
                 ),

               Container(height: 11,),
               TextFormField(
                 controller: emailText,
                 decoration: InputDecoration(
                   hintText: 'Enter Email',
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(21),
                       borderSide: BorderSide(
                           color: Colors.red
                       )
                   ),
                   suffixText: 'Enter Email',
                   suffixIcon: IconButton(
                     icon: Icon(Icons.remove_red_eye),
                     onPressed: (){},
                   ),
                   prefixIcon:Icon(Icons.email,color: Colors.green,),
                 ),
                 validator: (value) {
                   if (value == null ||
                       value.isEmpty||
                       !RegExp(r'\S+@\S+\.\S+').hasMatch(value))
                   {
                     return 'Enter correct Email Address';
                   }
                   else
                   {
                     return null;
                   }
                 },
                 keyboardType: TextInputType.emailAddress,
               ),
               Container(height: 11,
               ),
               TextField(
                 controller: passText,
                 obscureText: true,
                 decoration: InputDecoration(
                   //hintText: 'Enter Password',
                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(21),
                         borderSide: BorderSide(
                             color: Colors.pink
                         )
                     ),
                   suffixText: 'Enter Password',
                   suffixIcon: IconButton(
                     icon: Icon(Icons.remove_red_eye),
                     onPressed: (){},
                   ),
                   prefixIcon:Icon(Icons.password,color: Colors.green,),
                 ),

                 keyboardType: TextInputType.visiblePassword,
                 ),

ElevatedButton(onPressed: () {
  String uName = nmText.text.toString();
  String uNum = numText.text.toString();
  String uEmail = emailText.text.toString();
  String uPassword = passText.text;
  print("Name:$uName,Number:$uNum,Emai:$uEmail,Password:$uPassword");
},
 style: ElevatedButton.styleFrom(
  primary: Colors.blueGrey,
  elevation:10,
  shadowColor: Colors.blue,
),
 child: Text('Login'),),
               InkWell(
                 onTap: ()=>{
Navigator.push(context,
    MaterialPageRoute(builder: (BuildContext cotext)=>login()
    ),
)
                 },
                 child: Text(
                   'sing up',
                   style: TextStyle(fontSize: 30),
                 ),
               )
             ],
           )
          ),
            ],
            ),
            ),
          )
      ),
    ),
    );
  }
}