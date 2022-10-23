import 'package:flutter/material.dart';
import 'package:integratetest/login.dart';
import 'package:integratetest/MyRegister.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
    },
  ));
}