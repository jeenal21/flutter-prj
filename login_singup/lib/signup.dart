import 'package:flutter/material.dart';
import 'package:login_singup/Home.dart';

  class singup extends StatelessWidget {
    final formKey = GlobalKey <FormState>();

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          padding: EdgeInsets.all(35),
          child: Form(
            key: formKey,
            child: Column(
             children: [
               TextFormField(
                 decoration: InputDecoration(labelText:'Enter Name'),
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

               TextFormField(
                 decoration: InputDecoration(labelText:'Enter Phone Number'),
                 validator: (value) {
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
                 keyboardType: TextInputType.number,
               ),

               TextFormField(
                 decoration: InputDecoration(labelText:'Enter Email'),
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
               ElevatedButton(
                 onPressed: (){
                   if (formKey.currentState!.validate())
                   {
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder:(context)=>Home(),
                            ),
                        );
                   }
                 },
                   child: Text('Sign up')
               )
             ]
      ),
          ),

    ),
    ),
      );
  }
}
