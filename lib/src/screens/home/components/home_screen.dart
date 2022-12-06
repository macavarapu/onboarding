import 'package:flutter/material.dart';
import 'package:untitled/src/screens/autthentication/spalansh_screen/components/body.dart';
import 'package:untitled/src/screens/forgot_password/componets/body.dart';
import 'package:untitled/src/screens/home/components/body.dart';
import 'package:untitled/src/screens/login_screen/components/body.dart';
class HomeScreen extends StatelessWidget {
  static var routename;

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyHome(),
        // appBar: AppBar(
        //
        // ),
        //
    );

  }

}
