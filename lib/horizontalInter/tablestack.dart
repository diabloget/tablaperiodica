import 'package:flutter/material.dart';
import 'package:tablaperiodica/generalCode/elementcase.dart';
import 'package:tablaperiodica/horizontalInter/containers.dart';
import 'package:tablaperiodica/horizontalInter/rowscolumns.dart';
import 'package:tablaperiodica/generalCode/sizeconfig.dart';
import 'package:flutter/cupertino.dart';

class HorizontalInterStack extends Stack{
  static Stack inteStack(){
    return Stack(children: <Widget>[
      Positioned(
          top: 0.20*SizeConfig.fixAllVer,
          right: 8.4*SizeConfig.fixAllHor,
          child: Center(
              child: Text(
                  "Tabla Periódica de Los Elementos", style: TextStyle(fontSize: 2.0*SizeConfig.fixAllHor, color: Colors.black)
              )
          )
      ),
      Positioned(
          top: 4.00*SizeConfig.fixAllVer,
          right: 10.52*SizeConfig.fixAllHor,
          child: Center(
              child: Text(
                  "(Arreglo Internacional)", style: TextStyle(fontSize: 0.8*SizeConfig.fixAllHor, color: Colors.black)
              )
          )
      ),

      Positioned(
          top: 8.10*SizeConfig.fixAllVer,
          left: 17.50*SizeConfig.fixAllHor,
          child: Containers.grupos(RowsColumns.top(1, 2))
      ),

      Positioned(
          top: 8.10*SizeConfig.fixAllVer,
          right: 4.00*SizeConfig.fixAllHor,
          child: Containers.grupos(RowsColumns.top(3, 18))
      ),

      Positioned(
        top: 11.90*SizeConfig.fixAllVer,
        left: 17.54*SizeConfig.fixAllHor,
        child: Containers.families(RowsColumns.familiesRow()),
      ),

      Positioned(
        top: 11.90*SizeConfig.fixAllVer,
        right: 4.04*SizeConfig.fixAllHor,
        child: Containers.families(RowsColumns.familiesRowTwo()),
      ),

      Positioned(
        top: 26.62*SizeConfig.fixAllVer,
        left: 22.04*SizeConfig.fixAllHor,
        child: Containers.nivel(RowsColumns.nivelTwo(3, 6)),
      ),

      Positioned(
        top: 14.10*SizeConfig.fixAllVer,
        left: 17.54*SizeConfig.fixAllHor,
        child: Containers.elespecificcontainer(Elementcase.econtainer(1, 4, 2)),
      ),
      Positioned(
        top: 18.25*SizeConfig.fixAllVer,
        left: 17.54*SizeConfig.fixAllHor,
        child: Containers.elerowcontainer(RowsColumns.eleRow(3, 4)),
      ),
      Positioned(
        top: 22.40*SizeConfig.fixAllVer,
        left: 17.54*SizeConfig.fixAllHor,
        child: Containers.elerowcontainer(RowsColumns.eleRow(11, 12)),
      ),
      Positioned(
        top: 26.55*SizeConfig.fixAllVer,
        left: 17.54*SizeConfig.fixAllHor,
        child: Containers.elerowcontainer(RowsColumns.eleRow(19, 20)),
      ),
      Positioned(
        top: 30.70*SizeConfig.fixAllVer,
        left: 17.54*SizeConfig.fixAllHor,
        child: Containers.elerowcontainer(RowsColumns.eleRow(37, 38)),
      ),
      Positioned(
        top: 34.85*SizeConfig.fixAllVer,
        left: 17.54*SizeConfig.fixAllHor,
        child: Containers.elerowcontainer(RowsColumns.eleRow(55, 56)),
      ),
      Positioned(
        top: 39.00*SizeConfig.fixAllVer,
        left: 17.54*SizeConfig.fixAllHor,
        child: Containers.elerowcontainer(RowsColumns.eleRow(87, 88)),
      ),
      Positioned(
        top: 43.15*SizeConfig.fixAllVer,
        left: 17.54*SizeConfig.fixAllHor,
        child: Containers.elerowcontainer(RowsColumns.eleRow(119, 120)),
      ),

      Positioned(
        top: 26.55*SizeConfig.fixAllVer,
        left: 22.60*SizeConfig.fixAllHor,
        child: Containers.elerowcontainer(RowsColumns.eleRow(21, 36)),
      ),
      Positioned(
        top: 30.70*SizeConfig.fixAllVer,
        left: 22.60*SizeConfig.fixAllHor,
        child: Containers.elerowcontainer(RowsColumns.eleRow(39, 54)),
      ),
      Positioned(
        top: 34.85*SizeConfig.fixAllVer,
        left: 22.60*SizeConfig.fixAllHor,
        child: Containers.elerowcontainer(RowsColumns.eleRow(57, 86)),
      ),
      Positioned(
        top: 39.00*SizeConfig.fixAllVer,
        left: 22.60*SizeConfig.fixAllHor,
        child: Containers.elerowcontainer(RowsColumns.eleRow(89, 118)),
      ),

      Positioned(
        top: 47.30*SizeConfig.fixAllVer,
        left: 22.60*SizeConfig.fixAllHor,
        child: Containers.elerowcontainer(RowsColumns.eleRow(58, 71)),
      ),
      Positioned(
        top: 51.45*SizeConfig.fixAllVer,
        left: 22.60*SizeConfig.fixAllHor,
        child: Containers.elerowcontainer(RowsColumns.eleRow(90, 103)),
      ),

      Positioned(
        top: 47.36*SizeConfig.fixAllVer,
        left: 22.04*SizeConfig.fixAllHor,
        child: Containers.nivel(RowsColumns.nivelTwo(4, 5)),
      ),

      Positioned(
        top: 14.10*SizeConfig.fixAllVer,
        right: 4.04*SizeConfig.fixAllHor,
        child: Containers.elespecificcontainer(Elementcase.econtainer(2, 4, 2)),
      ),

      Positioned(
        top: 18.25*SizeConfig.fixAllVer,
        right: 4.04*SizeConfig.fixAllHor,
        child: Containers.elerowcontainer(RowsColumns.eleRow(5, 10)),
      ),

      Positioned(
        top: 22.40*SizeConfig.fixAllVer,
        right: 4.04*SizeConfig.fixAllHor,
        child: Containers.elerowcontainer(RowsColumns.eleRow(13, 18)),
      ),

      Positioned(
        top: 14.16*SizeConfig.fixAllVer,
        left: 16.92*SizeConfig.fixAllHor,
        child: Containers.nivel(RowsColumns.nivelOne(1, 8)),
      ),

      Positioned(
        top: 14.16*SizeConfig.fixAllVer,
        right: 3.40*SizeConfig.fixAllHor,
        child: Containers.nivel(RowsColumns.nivelOne(1, 7)),
      ),

    ]);
  }
}