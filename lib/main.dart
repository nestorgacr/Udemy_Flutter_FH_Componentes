import 'package:flutter/material.dart';
import 'package:udemy_componentes/scr/pages/home_temp.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Udemy Componentes',
      debugShowCheckedModeBanner: false,
      home: HomePageTemp()
    );
  }
}