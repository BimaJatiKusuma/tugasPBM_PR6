import 'package:flutter/material.dart';
import 'package:praktikum6/view/bmipage.dart';
import 'package:praktikum6/view/login.dart';
import 'package:praktikum6/view/registrasi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/registrasi': (context) => Registrasi(),
        '/BMIPage':(context){return BMIPage();}
      },
    );
  }
}

class Data {
  final String name;
  final int age;

  Data({required this.name, required this.age});
}

class Data2 {
  String username;
  String password;

  Data2({required this.username, required this.password});
}
