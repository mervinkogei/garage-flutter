import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:garage/main.dart';
// import 'package:garage/login.dart';
// import 'package:garage/main.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Column(
          children: [
            SizedBox(height: 35.0),

             Container(
               height: 400.0,
               child: Image(image: AssetImage("images/new_banner.jpeg"),
               fit: BoxFit.contain,),
             ),

             SizedBox(height: 20.0),

             RichText(text: TextSpan(
               text: 'Welcome to ', style: TextStyle(
                 fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25.0),
                 children: <TextSpan>[
                   TextSpan(
                     text: 'X Garage', style: TextStyle(fontSize: 30.0, 
                     fontWeight: FontWeight.bold, color: Colors.redAccent),
                   )
                 ]
               ),         
               ),
               SizedBox(height: 20.0),

               Text('Garage services beyond your expectation'),

               SizedBox(height: 30.0),

               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                 RaisedButton(
                    padding: EdgeInsets.only(left: 30.0, right: 30.0),
                   onPressed: ()=> Navigator.push(context, 
                   MaterialPageRoute(builder: (context)=>HomePage())),
                 child: Text('LOGIN', style: TextStyle(fontSize: 20.0, 
                 fontWeight: FontWeight.bold, color: Colors.white),
                 ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  color: Colors.redAccent,
                 ),

                 SizedBox(width: 20.0),

                RaisedButton(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  onPressed: () {},
                 child: Text('REGISTER', style: TextStyle(fontSize: 20.0, 
                 fontWeight: FontWeight.bold, color: Colors.white),
                 ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  color: Colors.redAccent,
                 ),

               ],),
                SizedBox(height: 20.0),

                   SignInButton(
                    Buttons.Google,
                     text: "Sign up with Google",
                      onPressed: () {},
                    )
          ],
        ),
      ),
      
    );
  }
}