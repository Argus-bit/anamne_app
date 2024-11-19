import 'package:flutter/material.dart';
import 'menu_navegation.dart';


void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anamne',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NavegationMenu(initialIndex: 0),
    );
  }
}