import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tablaperiodica/generalCode/sizeconfig.dart';
import 'package:tablaperiodica/scrollTables/gilScroll.dart';

class GilScrollScreen extends StatefulWidget {
  @override
  State<GilScrollScreen> createState() => GilScrollScreenState();
}

class GilScrollScreenState extends State<GilScrollScreen> {

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
        child: Material(child: GilScroll.GilScroller(),),
    );
  }
}