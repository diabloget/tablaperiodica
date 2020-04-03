import 'package:flutter/material.dart';
import 'package:tablaperiodica/generalCode/sizeconfig.dart';
import 'package:tablaperiodica/generalCode/theme.dart';

class GenericCreator{

  static Container elerowcontainer(Row child){
    return Container(
      color: Themes.themer("edge"),
      child: child,
      padding: EdgeInsets.all(0.04*SizeConfig.fixAllHor),
    );
  }

  static Container elespecificcontainer(Container child){
    return Container(
      color: Themes.themer("edge"),
      child: child,
      padding: EdgeInsets.all(0.04*SizeConfig.fixAllHor),
    );
  }

  static Container columncontainer(Column child){
    return Container(
      color: Themes.themer("edge"),
      child: child,
      padding: EdgeInsets.all(0.08*SizeConfig.fixAllHor),
    );
  }

  static Container orbitalcontainer(Row child){
    return Container(
      color: Themes.themer("edge"),
      child: child,
      padding: EdgeInsets.all(0.025*SizeConfig.fixAllHor),

    );
  }

  static Container periodoscontcase(Column child){
    return Container(
        child: child,
        color: Themes.themer("background"),
        padding: EdgeInsets.all(0.00*SizeConfig.fixAllHor),
    );
  }

/*
  static Container conttablebutton()

  static Stack international(){
    return Stack(

    );
  }
   */


}