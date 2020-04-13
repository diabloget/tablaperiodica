import 'package:flutter/material.dart';
import 'package:tablaperiodica/generalCode/preferences.dart';
import 'package:tablaperiodica/horizontalGil/gilScreen.dart';
import 'package:tablaperiodica/horizontalInter/interScreen.dart';
import 'package:tablaperiodica/menu/menuScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tablas periódicas',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => MainScreen(),
        '/gil':(context) => GilScreen(),
        '/international':(context) => InterScreen(),
      },
    );
  }
}