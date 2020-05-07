import 'package:flutter/material.dart';
import 'package:tablaperiodica/generalCode/sizeconfig.dart';
import 'package:tablaperiodica/generalCode/theme.dart';

class GContainers{
  static Container gilSides(Column child){
    return Container(
      color: Themes.themer("edge"),
      child: child,
      padding: EdgeInsets.only(bottom: SizeConfig.fixLilVerZ * 0.2 , top: SizeConfig.fixLilVerZ * 0.2),
    );
  }

  static Container gilTopper(Row child){
    return Container(
      color: Themes.themer("edge"),
      child: child,
      padding: EdgeInsets.only(right: SizeConfig.fixLilHorZ * 0.075 , left: SizeConfig.fixLilHorZ * 0.075)
    );
  }

  static Container gilBotter(Row child){
    return Container(
      color: Themes.themer("edge"),
      child: child,
      padding: EdgeInsets.only(right: SizeConfig.fixLilHorZ * 0.075 , left: SizeConfig.fixLilHorZ * 0.075)
    );
  }

  static Container gilElementer(Row child){
    return Container(
      padding: EdgeInsets.only(right: SizeConfig.fixLilHorZ * 0.075 , left: SizeConfig.fixLilHorZ * 0.075),
      color: Themes.themer("edge"),
      child: child,
    );
  }

  static List numbers(int start, int end){
    var List = [];
    while(start<=end){
      List.add(start);
      start++;
    }
    return List;
  }
}


class IContainers{

}

