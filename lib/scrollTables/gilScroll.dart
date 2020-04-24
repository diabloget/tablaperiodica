import 'package:flutter/material.dart';
import 'package:tablaperiodica/scrollTables/gilEleStack.dart';
import 'package:tablaperiodica/scrollTables/rowscolumns.dart';
import 'package:tablaperiodica/generalCode/sizeconfig.dart';
import 'containers.dart';

class GilScroll{

  static SingleChildScrollView GilScroller(){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Stack(
        children: <Widget>[
          //Stack with all the elements and little information.
          Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: GilEleStack.gilstacker(),
            ),
          ),

          //Right Side
          Align(
            alignment: Alignment.centerRight,
            child: GContainers.gilRighter(),
          ),

          //Left Side
          Positioned(
            top: SizeConfig.fixLilVerZ * 4.0,
            left: SizeConfig.fixLilHorZ * 0.2,
            child: GContainers.gilLefter(RowsColumns.nivelrow()),
          ),

          Align(
            alignment: Alignment.topCenter,
            child: GContainers.gilTopper(RowsColumns.topcont()),
          ),


        ],
      ),
    );
  }


}