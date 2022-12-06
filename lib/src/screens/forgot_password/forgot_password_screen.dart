import 'package:flutter/material.dart';
import 'package:untitled/src/screens/forgot_password/componets/body.dart';
class ForgotScreen extends StatelessWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("Forgot Screen",
         style: TextStyle(
             fontWeight: FontWeight.normal,
             color: Colors.black,
         ),
       ),
       backgroundColor: Colors.white70,
     ),

      body: BodyList(),
     // backgroundColor: Colors.black,
    );
  }
}
