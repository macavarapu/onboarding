import 'dart:core';
import 'dart:core';
import 'dart:core';
import 'dart:core';
import 'dart:core';
import 'dart:core';
import 'dart:core';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/src/material/date.dart';
import 'package:untitled/src/screens/autthentication/spalansh_screen/components/body.dart';
import 'package:untitled/src/screens/autthentication/spalansh_screen/spalansh%20screeen.dart';

import 'spalansh screeen.dart';
class SpalanshSecreen extends StatelessWidget {
  static var routename;

  // ignore: non_constant_identifier_names
 // Stack String; String routename="/sPalansh";

  const SpalanshSecreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    /// you have call it an string screen
    SizeConFig().init(context);
    return const Scaffold(
     body: Body(),
    //  spalanshcontent:SpalanshContent(),
    );
  }
}

class String {
}

class SizeConFig {
  void init(BuildContext context) {}
}
