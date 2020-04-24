import 'package:flutter/material.dart';
import 'package:tablaperiodica/generalCode/sizeconfig.dart';
import 'package:tablaperiodica/generalCode/theme.dart';

class GilEleStack{

  static Stack gilstacker(){
    return Stack(
      children: <Widget>[
        Container(
          height: SizeConfig.fixVerZoomed,
          width: SizeConfig.fixHorZoomed,
          color: Themes.themer("background"),
        ),
      ],
    );
  }

}