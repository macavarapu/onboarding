import 'package:flutter/material.dart';
import 'package:untitled/src/screens/autthentication/spalansh_screen/components/body.dart';

import 'body.dart';
class LoginSuccessScreen extends StatelessWidget {
  static var routename;

  const LoginSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

       // leading: SizedBox(),
        title: Text("Login Screen"),
      ),
      body:  BodyScreen(),

    );
  }
}
