import 'package:flutter/material.dart';
import 'package:tablaperiodica/generalCode/sizeconfig.dart';
import 'package:tablaperiodica/generalCode/theme.dart';

class RowsColumns{
  static Container niveles(Text child){
    return Container(
      margin: EdgeInsets.only(left: SizeConfig.fixLilHorZ*0.2, right: SizeConfig.fixLilHorZ*0.2, top: SizeConfig.fixLilVerZ*0.2, bottom: SizeConfig.fixLilVerZ*0.2),
      height: SizeConfig.fixLilVerZ * 6.2,
      width: SizeConfig.fixLilHorZ * 2.8,
      color: Themes.themer("inwhite"),
      child: Center(child: child,),
    );
  }

  static Column nivelrow(){
    return Column(
      children: <Widget>[
        niveles(niveltext("1s")),
        niveles(niveltext("2s-2p")),
        niveles(niveltext("3s-3p")),
        niveles(niveltext("4s")),
        niveles(niveltext("3d-4p")),
        niveles(niveltext("5s")),
        niveles(niveltext("4d-5p")),
        niveles(niveltext("6s")),
        niveles(niveltext("5d")),
        niveles(niveltext("4f-6p")),
        niveles(niveltext("7s")),
        niveles(niveltext("6d")),
        niveles(niveltext("5f-7p")),
        niveles(niveltext("8s..."))
      ],
    );
  }

  static Text niveltext(String text){
    return Text(text, style:
    TextStyle(color: Themes.themer("letters"), fontSize: SizeConfig.fixLilZoomed *0.2)
    );
  }

  static Container topcont(){
    return Container(
      height: SizeConfig.fixLilVerZ * 3,
      width: SizeConfig.fixerHorizontal - 500,
      margin: EdgeInsets.only(bottom: SizeConfig.fixLilVerZ*0.4),
      color: Themes.themer("inwhite"),
    );
  }
}