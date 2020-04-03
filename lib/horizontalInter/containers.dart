import 'package:flutter/material.dart';
import 'package:tablaperiodica/generalCode/sizeconfig.dart';

class Containers{

  static Container elerowcontainer(Row child){
    return Container(
      color: Colors.black,
      child: child,
      padding: EdgeInsets.all(0.04*SizeConfig.fixAllHor),
    );
  }

  static Container elespecificcontainer(Container child){
    return Container(
      color: Colors.black,
      child: child,
      padding: EdgeInsets.all(0.04*SizeConfig.fixAllHor),
    );
  }

  static Container grupos(Row child){
    return Container(
      color: Colors.black,
      child: child,
      padding: EdgeInsets.all(0.08*SizeConfig.fixAllHor),
    );
  }

  static Container nivel(Column child){
    return Container(
      color: Colors.white,
      child: child,
      padding: EdgeInsets.all(0.00*SizeConfig.fixAllHor),
    );
  }

  static Container families(Row child){
    return Container(
      color: Colors.black,
      child: child,
      padding: EdgeInsets.all(0.04*SizeConfig.fixAllHor),
    );
  }
}