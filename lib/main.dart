import 'package:flutter/material.dart';

import 'package:flutter_application_1/dashboard.dart';
import 'package:flutter_application_1/page/loginpage.dart';

void main(){
  runApp(LoginPage());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Dashboard(),
    );
  }
}

class LoginPage extends StatelessWidget{
  const LoginPage ({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: LoginApp(),
    );
  }
}


