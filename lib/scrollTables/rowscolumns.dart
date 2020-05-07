import 'package:flutter/material.dart';
import 'package:tablaperiodica/generalCode/sizeconfig.dart';
import 'package:tablaperiodica/generalCode/theme.dart';

import 'eleContainer.dart';

class RowsColumns{
  static Container left(String child){
    return Container(
      margin: EdgeInsets.only(left: SizeConfig.fixLilHorZ*0.2, right: SizeConfig.fixLilHorZ*0.2, top: SizeConfig.fixLilVerZ*0.2, bottom: SizeConfig.fixLilVerZ*0.2),
      height: SizeConfig.fixLilVerZ * 6.2,
      width: SizeConfig.fixLilHorZ * 2.8,
      color: Themes.themer("inwhite"),
      child: FittedBox(
        alignment: Alignment.center,
        fit: BoxFit.scaleDown,
        child: globalText(child),
      ),
    );
  }

  static Column leftRow(){
    return Column(
      children: <Widget>[
        left("1s"),
        left("2s-2p"),
        left("3s-3p"),
        left("4s"),
        left("3d-4p"),
        left("5s"),
        left("4d-5p"),
        left("6s"),
        left("5d"),
        left("4f-6p"),
        left("7s"),
        left("6d"),
        left("5f-7p"),
        left("8s...")
      ],
    );
  }

  ////////////////////////////////////////////////////////////////////////

  static Container right(String child){
    if ((child == "1") | (child == "2") | (child == "3") | (child == "8")) {
      return Container(
        child: FittedBox(
          alignment: Alignment.topLeft,
          fit: BoxFit.fitWidth,
          child: globalText(child),
        ),
        margin: EdgeInsets.only(left: SizeConfig.fixLilHorZ*0.2, right: SizeConfig.fixLilHorZ*0.2, top: SizeConfig.fixLilVerZ*0.2, bottom: SizeConfig.fixLilVerZ*0.2),
        height: SizeConfig.fixLilVerZ * 6.2,
        width: SizeConfig.fixLilHorZ * 0.8,
        color: Themes.themer("inwhite"),
      );
    }

    if ((child == "4") | (child == "5")) {
      return Container(
        child: FittedBox(
          alignment: Alignment.topLeft,
          fit: BoxFit.fitWidth,
          child: globalText(child),
        ),
        margin: EdgeInsets.only(left: SizeConfig.fixLilHorZ*0.2, right: SizeConfig.fixLilHorZ*0.2, top: SizeConfig.fixLilVerZ*0.2, bottom: SizeConfig.fixLilVerZ*0.2),
        height: SizeConfig.fixLilVerZ * 12.8,
        width: SizeConfig.fixLilHorZ * 0.8,
        color: Themes.themer("inwhite"),
      );
    }

    if ((child == "6") | (child == "7")) {
      return Container(
        child: FittedBox(
          alignment: Alignment.topLeft,
          fit: BoxFit.fitWidth,
          child: globalText(child),
        ),
        margin: EdgeInsets.only(left: SizeConfig.fixLilHorZ*0.2, right: SizeConfig.fixLilHorZ*0.2, top: SizeConfig.fixLilVerZ*0.2, bottom: SizeConfig.fixLilVerZ*0.2),
        height: SizeConfig.fixLilVerZ * 19.4,
        width: SizeConfig.fixLilHorZ * 0.8,
        color: Themes.themer("inwhite"),
      );
    }
  }

  static Column rightCol(){
    int temp = 1;
    return Column(
      children: <Widget>[
        for(temp in numbers(temp, 8))
          right(temp.toString())
      ],
    );
  }

  ////////////////////////////////////////////////////////////////////////


  static Container topcont(FittedBox child){
    return Container(
      height: SizeConfig.fixLilVerZ * 2.6,
      width: SizeConfig.fixLilHorZ * 3,
      margin: EdgeInsets.only(left: SizeConfig.fixLilHorZ*0.075, right: SizeConfig.fixLilHorZ*0.075, bottom: SizeConfig.fixLilVerZ*0.4),
      color: Themes.themer("inwhite"),
      child: child,
    );
  }

  static Row topRow(){
    return Row(
      children: <Widget>[
        topcont(topFittedBox("I")),
        topcont(topFittedBox("II")),
        topcont(topFittedBox("III")),
        topcont(topFittedBox("IV")),
        topcont(topFittedBox("V")),
        topcont(topFittedBox("VI")),
        topcont(topFittedBox("VII")),
        topcont(topFittedBox("VIII")),
      ],
    );
  }

  static FittedBox topFittedBox(String child){
    return FittedBox(
      fit: BoxFit.fitHeight,
      alignment: Alignment.center,
      child: FittedBox(
        fit: BoxFit.fitWidth,
        //child: Center(child: Text(child)),
        child: Text(child, style: TextStyle(color: Themes.themer("letters")),),
      ),
    );
  }

  ////////////////////////////////////////////////////////////////////////

  static Container botcont(String child, double width){
    return Container(
      height: SizeConfig.fixLilVerZ * 3.4,
      width: SizeConfig.fixLilHorZ * width,
      margin: EdgeInsets.only(left: SizeConfig.fixLilHorZ*0.075, right: SizeConfig.fixLilHorZ*0.075, top: SizeConfig.fixLilVerZ*0.4),
      color: Themes.themer("inwhite"),
      child: FittedBox(
        child: globalText(child),
      ),
    );
  }

  static Row botRow(){
    return Row(
      children: <Widget>[
        botcont("Subnivel f", 43.95),
        botcont("Subnivel d", 21.9),
        botcont("Subnivel s", 6.15),
        botcont("Subnivel p", 18.75),
      ],
    );
  }

  ////////////////////////////////////////////////////////////////////////

  static Row eleRow(int start, int end){
    return Row(
      children: <Widget>[
        for(start in numbers(start, end))
          Elementcase.gElContainer(start)
      ],
    );
  }

  ////////////////////////////////////////////////////////////////////////

  static Text globalText(String text){
    return Text(text, style:
    TextStyle(color: Themes.themer("letters"), fontSize: SizeConfig.fixLilHorZ *1.0)
    );
  }



  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////







  ////////////////////////////////////////////////////////////////////////

  static List numbers(int start, int end){
    var List = [];
    while(start<=end){
      List.add(start);
      start++;
    }
    return List;
  }
}