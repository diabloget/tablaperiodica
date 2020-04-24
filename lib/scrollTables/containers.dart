import 'package:flutter/material.dart';
import 'package:tablaperiodica/generalCode/sizeconfig.dart';
import 'package:tablaperiodica/generalCode/theme.dart';

class GContainers{
  static Container gilLefter(Column child){
    return Container(
      color: Themes.themer("edge"),
      child: child,
      padding: EdgeInsets.only(bottom: SizeConfig.fixLilVerZ * 0.2 , top: SizeConfig.fixLilVerZ * 0.2),
    );
  }

  static Container gilRighter(){
    return Container(

    );
  }

  static Container gilTopper(Container child){
    return Container(
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

