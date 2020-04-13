import 'package:flutter/material.dart';
import 'package:tablaperiodica/generalCode/preferences.dart';
import 'package:tablaperiodica/generalCode/sizeconfig.dart';
import 'package:tablaperiodica/generalCode/zooms.dart';
import 'package:flutter/services.dart';
import 'package:tablaperiodica/horizontalGil/tablestack.dart';
import 'package:tablaperiodica/generalCode/absorber.dart';


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

// Absorber.absorbBugs(Horizontalzoom.genericZoom(HorizontalGilStack.gilStack(), SizeConfig.fixerVertical, SizeConfig.fixerHorizontal))
