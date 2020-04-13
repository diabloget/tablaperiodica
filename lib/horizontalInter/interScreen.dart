import 'package:flutter/material.dart';
import 'package:tablaperiodica/generalCode/sizeconfig.dart';
import 'package:tablaperiodica/generalCode/zooms.dart';
import 'package:flutter/services.dart';
import 'package:tablaperiodica/horizontalInter/tablestack.dart';

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