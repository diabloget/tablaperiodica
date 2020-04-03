import 'package:flutter/material.dart';
import 'package:tablaperiodica/horizontalGil/elementcase.dart';
import 'package:tablaperiodica/horizontalGil/genericcreator.dart';
import 'package:tablaperiodica/horizontalGil/rowscolumns.dart';
import 'package:tablaperiodica/generalCode/sizeconfig.dart';
import 'package:tablaperiodica/generalCode/theme.dart';

class HorizontalGilStack extends Stack{
  static Stack gilStack(){
    return Stack(children: <Widget>[
      Container(
        color: Themes.themer("background"),
      ),
      Positioned(
        right: 0.8*SizeConfig.fixAllHor,
        bottom: 0,
        child: GenericCreator.orbitalcontainer(RowsColumns.bottom()),
      ),
      Positioned(
        top: 1.0*SizeConfig.fixAllVer,
        left: 0.5*SizeConfig.fixAllHor,
        child: GenericCreator.columncontainer(RowsColumns.left()),
      ),
      Positioned(
        top: 3.814*SizeConfig.fixAllVer,
        right: 0.08*SizeConfig.fixAllHor,
        child: GenericCreator.periodoscontcase(RowsColumns.right()),
      ),
      Positioned(
        top: 3.724*SizeConfig.fixAllVer,
        right: 11.48*SizeConfig.fixAllHor,
        child: GenericCreator.elerowcontainer(RowsColumns.CRows(1)),
      ),
      Positioned(
        top: 3.724*SizeConfig.fixAllVer,
        right: 0.8*SizeConfig.fixAllHor,
        child: GenericCreator.elespecificcontainer(Elementcase.econtainer(2)),
      ),

/*
      Positioned(
        top: 48.844*SizeConfig.fixAllVer,
        right: 54*SizeConfig.fixAllHor,
        child: GenericCreator.elespecificcontainer(Elementcase.econtainer(2)),
      ),

*/

      Positioned(
        top: 7.484*SizeConfig.fixAllVer,
        right: 0.8*SizeConfig.fixAllHor,
        child: GenericCreator.elerowcontainer(RowsColumns.CRowpPlusGas(3)),
      ),
      Positioned(
        top: 11.244*SizeConfig.fixAllVer,
        right: 0.8*SizeConfig.fixAllHor,
        child: GenericCreator.elerowcontainer(RowsColumns.CRowpPlusGas(11)),
      ),

      Positioned(
        top: 15.005*SizeConfig.fixAllVer,
        right: 11.48*SizeConfig.fixAllHor,
        child: GenericCreator.elerowcontainer(RowsColumns.CRows(19)),
      ),

      Positioned(
        top: 18.756*SizeConfig.fixAllVer,
        right: 11.48*SizeConfig.fixAllHor,
        child: GenericCreator.elerowcontainer(RowsColumns.CRowd(21)),
      ),
      Positioned(
        top: 18.756*SizeConfig.fixAllVer,
        right: 0.8*SizeConfig.fixAllHor,
        child: GenericCreator.elerowcontainer(RowsColumns.CRowp(31)),
      ),
      Positioned(
        top: 22.527*SizeConfig.fixAllVer,
        right: 11.48*SizeConfig.fixAllHor,
        child: GenericCreator.elerowcontainer(RowsColumns.CRows(37)),
      ),
      Positioned(
        top: 26.288*SizeConfig.fixAllVer,
        right: 11.48*SizeConfig.fixAllHor,
        child: GenericCreator.elerowcontainer(RowsColumns.CRowd(39)),
      ),
      Positioned(
        top: 26.288*SizeConfig.fixAllVer,
        right: 0.8*SizeConfig.fixAllHor,
        child: GenericCreator.elerowcontainer(RowsColumns.CRowp(49)),
      ),
      Positioned(
        top: 30.049*SizeConfig.fixAllVer,
        right: 11.48*SizeConfig.fixAllHor,
        child: GenericCreator.elerowcontainer(RowsColumns.CRows(55)),
      ),
      Positioned( //27.502
        top: 33.81*SizeConfig.fixAllVer,
        right: 27.502*SizeConfig.fixAllHor,
        child: GenericCreator.elespecificcontainer(Elementcase.econtainer(57)),
      ),
      Positioned(
        top: 37.571*SizeConfig.fixAllVer,
        right: 27.502*SizeConfig.fixAllHor,
        child: GenericCreator.elerowcontainer(RowsColumns.CRowf(58)),
      ),
      Positioned(
        top: 37.571*SizeConfig.fixAllVer,
        right: 11.48*SizeConfig.fixAllHor,
        child: GenericCreator.elerowcontainer(RowsColumns.CRowd2nd(72)),
      ),
      Positioned(
        top: 37.571*SizeConfig.fixAllVer,
        right: 0.8*SizeConfig.fixAllHor,
        child: GenericCreator.elerowcontainer(RowsColumns.CRowp(81)),
      ),
      Positioned(
        top: 41.322*SizeConfig.fixAllVer,
        right: 11.48*SizeConfig.fixAllHor,
        child: GenericCreator.elerowcontainer(RowsColumns.CRows(87)),
      ),
      Positioned(
        top: 45.093*SizeConfig.fixAllVer,
        right: 27.502*SizeConfig.fixAllHor,
        child: GenericCreator.elespecificcontainer(Elementcase.econtainer(89)),
      ),
      Positioned(
        top: 48.844*SizeConfig.fixAllVer,
        right: 27.502*SizeConfig.fixAllHor,
        child: GenericCreator.elerowcontainer(RowsColumns.CRowf(90)),
      ),
      Positioned(
        top: 48.844*SizeConfig.fixAllVer,
        right: 11.48*SizeConfig.fixAllHor,
        child: GenericCreator.elerowcontainer(RowsColumns.CRowd2nd(104)),
      ),
      Positioned(
        top: 48.844*SizeConfig.fixAllVer,
        right: 0.8*SizeConfig.fixAllHor,
        child: GenericCreator.elerowcontainer(RowsColumns.CRowp(113)),
      ),
      Positioned(
        top: 52.615*SizeConfig.fixAllVer,
        right: 11.48*SizeConfig.fixAllHor,
        child: GenericCreator.elerowcontainer(RowsColumns.CRows(119)),
      ),
      Positioned(
        top: 1.7*SizeConfig.fixAllVer,
        right: 0.800*SizeConfig.fixAllHor,
        child: Container(child: RowsColumns.families(), color: Colors.black, padding: EdgeInsets.all(0.04*SizeConfig.fixAllHor),),
      ),
      Positioned(
        top: 0.00*SizeConfig.fixAllVer,
        right: 3.15*SizeConfig.fixAllHor,
        child: Center(
            child: Text("Elementos Representativos", style: TextStyle(fontSize: 0.80*SizeConfig.fixAllHor, color: Themes.themer("letters")))
        )
      ),
      Positioned(
          top: 15.232*SizeConfig.fixAllVer,
          right: 16.1*SizeConfig.fixAllHor,
          child: Center(
              child: Text("Elementos de Transición", style: TextStyle(fontSize: 0.80*SizeConfig.fixAllHor, color: Themes.themer("letters")))
          )
      ),
      Positioned(
          top: 34.047*SizeConfig.fixAllVer,
          left: 17.600*SizeConfig.fixAllHor,
          child: Center(
              child: Text("Tierras Raras", style: TextStyle(fontSize: 0.80*SizeConfig.fixAllHor, color: Themes.themer("letters")))
          )
      ),
      Positioned(
          top: 0.20*SizeConfig.fixAllVer,
          right: 20.4*SizeConfig.fixAllHor,
          child: Center(
            child: Text(
                "Tabla Periódica de Los Elementos", style: TextStyle(fontSize: 2.0*SizeConfig.fixAllHor, color: Themes.themer("letters"))
            )
          )
      ),
      Positioned(
          top: 4.00*SizeConfig.fixAllVer,
          right: 21.2*SizeConfig.fixAllHor,
          child: Center(
              child: Text(
                  "(Arreglo de Gil Chaverri Rodríguez)", style: TextStyle(fontSize: 0.8*SizeConfig.fixAllHor, color: Themes.themer("letters"))
              )
          )
      ),
      //Positioned(
        //top: 10.00*SizeConfig.fixAllVer,
       // left: 12*SizeConfig.fixAllHor,
        //child: BackButton(),
      //),
    ]);
  }
}

