import 'package:tablaperiodica/generalCode/elementcase.dart';
import 'package:flutter/material.dart';
import 'package:tablaperiodica/generalCode/theme.dart';
import 'package:tablaperiodica/generalCode/sizeconfig.dart';

class RowsColumns{
  static Row bottom() {
    return Row(
      children: <Widget>[
        Container(
          child: Center(
              child: textfix("Subnivel f \n    [n = 3]"),
          ),
          color: Themes.themer("inwhite"),
          width: 24.846*SizeConfig.fixAllHor,
          margin: EdgeInsets.all(0.04*SizeConfig.fixAllHor),
        ),
        Container(
          child: Center(
              child: textfix("Subnivel d \n    [n = 2]"),
          ),
          color: Themes.themer("inwhite"),
          width: 12.38*SizeConfig.fixAllHor,
          margin: EdgeInsets.all(0.04*SizeConfig.fixAllHor),
        ),
        Container(
          child: Center(
              child: textfix("Subnivel s \n    [n = 0]"),
          ),
          color: Themes.themer("inwhite"),
          width: 3.472*SizeConfig.fixAllHor,
          margin: EdgeInsets.all(0.04*SizeConfig.fixAllHor),
        ),
        Container(
          child: Center(
              child: textfix("Subnivel p \n    [n = 1]"),
          ),
          color: Themes.themer("inwhite"),
          width: 10.62*SizeConfig.fixAllHor,
          margin: EdgeInsets.all(0.04*SizeConfig.fixAllHor),
        ),
      ],
    );
  }

  static Column left(){
    return Column(
       children: <Widget>[
         Container(
           child: Center(child: Text("Subniveles \nasociados", style: TextStyle(fontSize: 0.45*SizeConfig.fixAllHor,color: Themes.themer("letters")))),
           color: Themes.themer("inwhite"),
           padding: EdgeInsets.only(right: 0.13*SizeConfig.fixAllHor, left: 0.13*SizeConfig.fixAllHor, bottom: 0.04*SizeConfig.fixAllHor, top: 0.04*SizeConfig.fixAllHor),
           margin: EdgeInsets.only(top: 0.08*SizeConfig.fixAllVer, bottom: 0.08*SizeConfig.fixAllVer),
           width: 4.0*SizeConfig.fixAllHor,
           height: 2.5*SizeConfig.fixAllVer,
         ),
         contn("1s"),
         contn("2s, 2p"),
         contn("3s, 3p"),
         contn("4s"),
         contn("3d, 4s, 4p"),
         contn("5s"),
         contn("4d, 5s, 5p"),
         contn("6s"),
         contn("5d"),
         contn("4f, 5d,\n6s, 6p"),
         contn("7s"),
         contn("6d"),
         contn("5f, 6d,\n7s, 7p"),
         contn("8s..."),
       ],
    );
  }

  static Container contn(String str){
    return Container(
      child: Center(child: textn(str)),
      color: Themes.themer("inwhite"),
      padding: EdgeInsets.only(right: 0.13*SizeConfig.fixAllHor, left: 0.13*SizeConfig.fixAllHor, bottom: 0.04*SizeConfig.fixAllHor, top: 0.04*SizeConfig.fixAllHor),
      margin: EdgeInsets.only(top: 0.08*SizeConfig.fixAllVer, bottom: 0.08*SizeConfig.fixAllVer, right: 0.04*SizeConfig.fixAllHor, left: 0.04*SizeConfig.fixAllHor),
      width: 4.0*SizeConfig.fixAllHor,
      height: 3.6*SizeConfig.fixAllVer,
    );
  }

  static Text textn(String str){
    return Text(str, style: TextStyle(fontSize: 0.70*SizeConfig.fixAllHor, color: Themes.themer("letters")),
    );
  }

  static Text textfix(String str){
    return Text(str, style: TextStyle(fontSize: 0.60*SizeConfig.fixAllHor, color: Themes.themer("letters")),
    );
  }


  static Column right(){
    return Column(children: <Widget>[
      periodos("1"),
      periodos("2"),
      periodos("3"),
      periodos("4"),
      periodos("5"),
      periodos("6"),
      periodos("7"),
      periodos("8")
    ],
    );
  }

  static Container periodos(String periodo) {
    if ((periodo == "1") | (periodo == "2") | (periodo == "3") | (periodo == "8")) {
      return Container(
        color: Themes.themer("inwhite"),
        child: textp(periodo),
        height: 3.605*SizeConfig.fixAllVer,
        padding: EdgeInsets.all(0.04*SizeConfig.fixAllHor),
        margin: EdgeInsets.only(top: 0.08*SizeConfig.fixAllVer, bottom: 0.08*SizeConfig.fixAllVer),
      );
    }

    if ((periodo == "4") | (periodo == "5")) {
      return Container(
        color: Themes.themer("inwhite"),
        child: textp(periodo),
        height: 7.35*SizeConfig.fixAllVer,
        padding: EdgeInsets.all(0.04*SizeConfig.fixAllHor),
        margin: EdgeInsets.only(top: 0.08*SizeConfig.fixAllVer, bottom: 0.08*SizeConfig.fixAllVer),
      );
    }

    if ((periodo == "6") | (periodo == "7")) {
      return Container(
        color: Themes.themer("inwhite"),
        child: textp(periodo),
        height: 11.10*SizeConfig.fixAllVer,
        padding: EdgeInsets.all(0.04*SizeConfig.fixAllHor),
        margin: EdgeInsets.only(top: 0.08*SizeConfig.fixAllVer, bottom: 0.08*SizeConfig.fixAllVer),
      );
    }
  }

  static Text textp(String str){
    return Text(str, style: TextStyle(fontSize: 1.30*SizeConfig.fixAllVer, color: Themes.themer("letters")),
    );
  }

  static Text textfamilies(String str){
    return Text(str, style: TextStyle(fontSize: 0.55*SizeConfig.fixAllHor, color: Themes.themer("letters")),
    );
  }

  static Row eleRow(int start, int end){
    return Row(
      children: <Widget>[
        for(start in numbers(start, end))
          Elementcase.econtainer(start, 3.6, 1.7)
      ],
    );
  }

  static Row families(){
    return Row(children: <Widget>[
      Container(child: Center(child: textfamilies("I")), margin: EdgeInsets.all(0.04*SizeConfig.fixAllHor), width: 1.7*SizeConfig.fixAllHor, color: Themes.themer("inwhite"),),
      Container(child: Center(child: textfamilies("II")), margin: EdgeInsets.all(0.04*SizeConfig.fixAllHor), width: 1.7*SizeConfig.fixAllHor, color: Themes.themer("inwhite"),),
      Container(child: Center(child: textfamilies("III")), margin: EdgeInsets.all(0.04*SizeConfig.fixAllHor), width: 1.7*SizeConfig.fixAllHor, color: Themes.themer("inwhite"),),
      Container(child: Center(child: textfamilies("IV")), margin: EdgeInsets.all(0.04*SizeConfig.fixAllHor), width: 1.7*SizeConfig.fixAllHor, color: Themes.themer("inwhite"),),
      Container(child: Center(child: textfamilies("V")), margin: EdgeInsets.all(0.04*SizeConfig.fixAllHor), width: 1.7*SizeConfig.fixAllHor, color: Themes.themer("inwhite"),),
      Container(child: Center(child: textfamilies("VI")), margin: EdgeInsets.all(0.04*SizeConfig.fixAllHor), width: 1.7*SizeConfig.fixAllHor, color: Themes.themer("inwhite"),),
      Container(child: Center(child: textfamilies("VII")), margin: EdgeInsets.all(0.04*SizeConfig.fixAllHor), width: 1.7*SizeConfig.fixAllHor, color: Themes.themer("inwhite"),),
      Container(child: Center(child: textfamilies("VIII")), margin: EdgeInsets.all(0.04*SizeConfig.fixAllHor), width: 1.7*SizeConfig.fixAllHor, color: Themes.themer("inwhite"),)
    ]);
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

