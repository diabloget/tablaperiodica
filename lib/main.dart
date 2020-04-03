import 'dart:io';
import 'package:flutter/material.dart';
import 'package:tablaperiodica/generalCode/sizeconfig.dart';
import 'package:tablaperiodica/generalCode/zooms.dart';
import 'package:flutter/services.dart';
import 'package:tablaperiodica/horizontalGil/tablestack.dart';
import 'package:tablaperiodica/horizontalInter/tablestack.dart';
import 'package:tablaperiodica/generalCode/absorber.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabla periódica V:0.25g',
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

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {

  void initState(){
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setEnabledSystemUIOverlays([
      //Its okay if there is nothing here :)
    ]);
  }

  Future<bool> _onBackPressed() {
    ()=> exit(0);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabla Periódica"),
        ),
        body: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.table_chart),
              title: Text("Arreglo de Gil Chaverri"),
              onTap: () {
                SystemChrome.setPreferredOrientations([
                  DeviceOrientation.landscapeLeft,
                  DeviceOrientation.landscapeLeft,
                ]);
                Navigator.pushNamed(context, '/gil');
              },
            ),
            ListTile(
              leading: Icon(Icons.table_chart),
              title: Text("Arreglo Internacional"),
              onTap: () {
                SystemChrome.setPreferredOrientations([
                  DeviceOrientation.landscapeLeft,
                  DeviceOrientation.landscapeLeft,
                ]);
                Navigator.pushNamed(context, '/international');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class GilScreen extends StatefulWidget {
  @override
  State<GilScreen> createState() => GilScreenState();
}

class GilScreenState extends State<GilScreen> {

  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([
      //Its okay if there is nothing here :)
    ]);
  }

  Future<bool> _onBackPressed() {
    Navigator.pushNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Absorber.absorbBugs(Horizontalzoom.genericZoom(HorizontalGilStack.gilStack(), SizeConfig.fixerVertical, SizeConfig.fixerHorizontal))
    );
  }
}

// height: SizeConfig.fixerVertical,
// width: SizeConfig.fixerHorizontal,

class InterScreen extends StatefulWidget {
  @override
  State<InterScreen> createState() => InterScreenState();
}

class InterScreenState extends State<InterScreen> {

  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([
      //Its okay if there is nothing here :)
    ]);
  }

  Future<bool> _onBackPressed() {
    Navigator.pushNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
        onWillPop: _onBackPressed,
        child: Horizontalzoom.genericZoom(HorizontalInterStack.inteStack(), SizeConfig.fixerVertical, SizeConfig.fixerHorizontal),
    );
  }
}