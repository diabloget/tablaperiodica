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

          //Left & Right Sides
          Positioned(
            top: SizeConfig.fixLilVerZ * 3.2,
            left: SizeConfig.fixLilHorZ * 0.2,
            child: GContainers.gilSides(RowsColumns.leftRow()),
          ),
          Positioned(
            top: SizeConfig.fixLilVerZ * 3.2,
            right: SizeConfig.fixLilHorZ * 0.2,
            child: GContainers.gilSides(RowsColumns.rightCol()),
          ),

        ],
      ),
    );
  }


}