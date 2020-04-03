import 'package:flutter/material.dart';
import 'package:tablaperiodica/horizontalInter/elementcase.dart';
import 'package:tablaperiodica/generalCode/sizeconfig.dart';

class RowsColumns{

  static Row top(int start, int end){
    return Row(
      children: <Widget>[
        for(start in numbers(start, end))
          topContainer(start.toString())
      ],
    );
  }

  static Container topContainer(String number){
    return Container(
      height: 3*SizeConfig.fixAllVer,
      width: 2*SizeConfig.fixAllHor,
      child: Center(child: Text(number, style: TextStyle(fontSize: 0.80*SizeConfig.fixAllHor, color: Colors.black))),
      margin: EdgeInsets.only(top: 0.08*SizeConfig.fixAllVer, bottom: 0.08*SizeConfig.fixAllVer, right: 0.04*SizeConfig.fixAllHor,left: 0.04*SizeConfig.fixAllHor),
      color: Colors.white,
    );
  }

  //

  static Column nivelOne(int start, int end){
    return Column(
      children: <Widget>[
        for(start in numbers(start, end))
          nivelContainer(start.toString(), 0.70)
      ],
    );
  }

  static Column nivelTwo(int start, int end){
    return Column(
      children: <Widget>[
        for(start in numbers(start, end))
          nivelContainer(start.toString(), 0.60)
      ],
    );
  }

  static Container nivelContainer(String number, double size){
    return Container(
      height: 4*SizeConfig.fixAllVer,
      child: Center(child: Text(number, style: TextStyle(fontSize: size*SizeConfig.fixAllHor, color: Colors.white)),),
      color: Colors.black,
      padding: EdgeInsets.all(0.08*SizeConfig.fixAllHor),
      margin: EdgeInsets.only(top: 0.08*SizeConfig.fixAllVer, bottom: 0.08*SizeConfig.fixAllVer),
    );
  }

  //

  static Row eleRow(int start, int end){
    return Row(
      children: <Widget>[
        for(start in numbers(start, end))
          Elementcase.econtainer(start)
      ],
    );
  }

  //

  static Row familiesRow(){
    return Row(
      children: <Widget>[
        FamiliesContainer("I"),
        FamiliesContainer("II"),
      ],
    );
  }

  static Row familiesRowTwo(){
    return Row(
      children: <Widget>[
        FamiliesContainer("III"),
        FamiliesContainer("IV"),
        FamiliesContainer("V"),
        FamiliesContainer("VI"),
        FamiliesContainer("VII"),
        FamiliesContainer("VIII"),
      ],
    );
  }

  static Container FamiliesContainer(String rNumber){
    return Container(
      child: Center(child: Text(rNumber, style: TextStyle(fontSize: 0.65*SizeConfig.fixAllHor, color: Colors.black))),
      margin: EdgeInsets.all(0.04*SizeConfig.fixAllHor),
      width: 2*SizeConfig.fixAllHor,
      color: Colors.white,

    );
  }

  //

  static List numbers(int start, int end){
    var List = [];
    while(start<=end){
      if((start==57) | (start==89)){
        List.add(start);
        start+=15;
      }

      List.add(start);
      start++;
    }
    return List;
  }


}