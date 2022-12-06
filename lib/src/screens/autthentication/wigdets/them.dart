import 'package:flutter/material.dart';
import 'const.dart';
ThemeData theme(){
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "mull",
    appBarTheme:AppBarTheme(
      color: Colors.white,
      elevation: 0,
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(
        headline6:TextStyle(color:Color(0xff8D8D8D),fontSize: 20),
      ),

    ) ,
    textTheme: TextTheme(
      bodyText1: TextStyle(color: Colors.white,),
      bodyText2: TextStyle(color: Colors.white),
    ),
visualDensity: VisualDensity.adaptivePlatformDensity
  );
}
