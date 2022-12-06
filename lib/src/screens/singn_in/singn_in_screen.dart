

import 'package:flutter/material.dart';
import 'package:untitled/src/screens/autthentication/spalansh_screen/components/body.dart';
import 'package:untitled/src/screens/singn_in/components/body.dart';
class SingnInScreen extends StatelessWidget {
 //  Static String,routename=" /Sin_in" ;
  const SingnInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
     title:Text("Singn In",
       style: TextStyle(
           fontSize: 20,
           fontWeight: FontWeight.bold,
           color: Colors.black,
       ),
     ),
        backgroundColor: Colors.white60,
      ),
      body: BodyItem(),

    );
  }
}


