import 'package:flutter/material.dart';

import '../../forgot_password/forgot_password_screen.dart';
import '../../home/components/home_screen.dart';
import '../../login_screen/components/login_success_screen.dart';
import '../../singn_in/singn_in_screen.dart';
import '../spalansh_screen/spalansh screeen.dart';
//////We use name routes
//All our routes avabile here
final Map<String, WidgetBuilder> routes={
  SpalanshSecreen.routename:(Contex)=>SpalanshSecreen(),
  SpalanshSecreen.routename:(Contex)=> SingnInScreen(),
  SpalanshSecreen.routename:(Contex)=>ForgotScreen (),
  LoginSuccessScreen .routename:(Contex)=> LoginSuccessScreen (),
  HomeScreen.routename:(Contex)=>  HomeScreen (),
};
