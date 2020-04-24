import 'package:flutter/material.dart';
import 'package:tablaperiodica/generalCode/elementlist.dart';
import 'package:tablaperiodica/generalCode/sizeconfig.dart';

class Elementcase {

  static Container econtainer(int z, double h,  double w, double sizer) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(z.toString(), style: TextStyle( fontSize: 0.30*SizeConfig.fixAllHor, color: Colors.black),),
          Text(ElementList.elegetter(z+119), style: TextStyle( fontSize: 0.66*SizeConfig.fixAllHor, color: Colors.black),),
          Text(ElementList.elegetter(z-1), style: TextStyle( fontSize: 0.24*SizeConfig.fixAllHor, color: Colors.black),),
          Text(ElementList.elegetter(z+239), style: TextStyle( fontSize: 0.24*SizeConfig.fixAllHor, color: Colors.black),),
        ],
      ),
      color: knowcolor(z),
      height: h*SizeConfig.fixAllVer,
      width: w*SizeConfig.fixAllHor,
      margin: EdgeInsets.only(top: 0.08*SizeConfig.fixAllVer, bottom: 0.08*SizeConfig.fixAllVer, right: 0.04*SizeConfig.fixAllHor,left: 0.04*SizeConfig.fixAllHor),
    );
  }


  static Color knowcolor(int z){
    //Representativos
    if((z==1) | (z==37)  | (z==38)  | (z==55)  | (z==56)  | (z==87)  | (z==88)  | (z==119)  | (z==120)){
      return Color.fromARGB(255, 248, 248, 120);
    }
    //Metaloides
    if((z==5) | (z==14)  | (z==32)  | (z==33)  | (z==51)  | (z==52)  | (z==84) | (z==85)){
      return Color.fromARGB(255, 248, 193, 134);
    }
    //Gases nobles
    if((z==2) | (z==10)  | (z==18)  | (z==36)  | (z==54)  | (z==86)  | (z==118)){
      //return Color.fromARGB(255, 147, 209, 251);
      return Color.fromARGB(255, 100, 203, 255);
    }
    //Transición
    if((z==57) | (z==89)){
      return Color.fromARGB(255, 134, 248, 153);
    }
    //Triadas
    if((z==26) | (z==27)  | (z==28)  | (z==44)  | (z==45)  | (z==46)  | (z==76)  | (z==77)  | (z==78)  | (z==108)  | (z==109)  | (z==110)){
      return Color.fromARGB(255, 83, 249, 191);
    }
    //Representativos
    if(knowcolorhelper(3, 18).contains(z)){
      return Color.fromARGB(255, 248, 248, 120);
      //Transición
    }
    if(knowcolorhelper(21, 10).contains(z)){
      return Color.fromARGB(255, 134, 248, 153);
    }
    if(knowcolorhelper(39, 10).contains(z)){
      return Color.fromARGB(255, 134, 248, 153);
    }
    if(knowcolorhelper(72, 9).contains(z)){
      return Color.fromARGB(255, 134, 248, 153);
    }
    if(knowcolorhelper(104, 9).contains(z)){
      return Color.fromARGB(255, 134, 248, 153);
    }
    //Tierras Raras
    if(knowcolorhelper(58, 14).contains(z)){
      return Color.fromARGB(255, 252, 106, 106);
    }

    if(knowcolorhelper(90, 14).contains(z)){
      return Color.fromARGB(255, 252, 106, 106);
    }
    //Representativos
    if(knowcolorhelper(31, 5).contains(z)){
      return Color.fromARGB(255, 248, 248, 120);
    }

    if(knowcolorhelper(49, 5).contains(z)){
      return Color.fromARGB(255, 248, 248, 120);
    }

    if(knowcolorhelper(81, 5).contains(z)){
      return Color.fromARGB(255, 248, 248, 120);
    }

    if(knowcolorhelper(113, 5).contains(z)){
      return Color.fromARGB(255, 248, 248, 120);
    }

  }
  /*
  Code to help the above method to choose the correct color for any chemical element.
   */

  static List knowcolorhelper(int start, int end){
    final List<int> kchelper = List(18);
    //endfixer was needed because a strange error/situation when "end(18) + Start(3) - 1 =/= 20" wtf...
    final int endfixer = end + start;
    int temp = 0;
    while(start<=(endfixer-1)){
      kchelper[temp] = start;
      temp ++;
      start ++;
    }
    return kchelper;
  }
}