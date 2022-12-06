

import 'package:flutter/material.dart';

import '../../autthentication/spalansh_screen/components/body.dart';
import '../../autthentication/spalansh_screen/spalansh screeen.dart';
import '../../home/components/home_screen.dart';
class BodyScreen extends StatelessWidget {
  const BodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
       // Image.asset("assets/image/1.png"),
        SizedBox(
          height: 40,
        ),
        Image.asset("assets/image/ok.png",cacheHeight: 500,cacheWidth: 400,

        ),
        Spacer(),
        Center(),
        Text("Login Success",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.normal,
            //gapPadding: 30,

        ),
        ),

       // Spacer(),
        SizedBox(
          height: 20,
        ),

        ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(200),

              ),
              backgroundColor: Color(	0xfff44336),

              minimumSize:
              Size(250, 40) // put the width and height you want
          ),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  HomeScreen  ( )));
          },

          child: const Text("Back to Home",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              //gapPadding: 30,
          ),
          ),



        ),
        Spacer(),

      ],
    );
  }


}
