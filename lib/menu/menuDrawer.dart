import 'package:flutter/material.dart';
import 'package:tablaperiodica/generalCode/preferences.dart';
import 'package:tablaperiodica/generalCode/sizeconfig.dart';
import 'package:tablaperiodica/generalCode/theme.dart';
import 'package:tablaperiodica/menu/appBarColor.dart';
import 'menuScreen.dart';

class MenuDrawer extends StatefulWidget{
  @override
  MenuDrawerState createState() => MenuDrawerState();
}

class MenuDrawerState extends State<MenuDrawer>{
  static Preferences _myPreferences = Preferences();

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          color: Themes.themer("background"),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: AppBarColor.boxDecoration(),
                child: Text(
                  "Preferencias", style: TextStyle(color: Color.fromARGB(255, 187, 187, 187), fontSize: 0.008*SizeConfig.fixerHorizontal)),
              ),
              Container(
                padding: EdgeInsets.only(left: 0.005*SizeConfig.fixerHorizontal, right: 0.005*SizeConfig.fixerHorizontal),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _myPreferences.blacktheme = boolexchanger(_myPreferences.blacktheme);
                      Navigator.pushNamed(context, '/');
                    });
                  },
                  child: Row(
                    children: <Widget>[
                      Text("Tema Oscuro", style: TextStyle(
                          color: Themes.themer("letters"), fontSize: 0.0065*SizeConfig.fixerHorizontal)),
                      Container(width: 0.035*SizeConfig.fixerHorizontal,),
                      Switch(
                        value: _myPreferences.blacktheme,
                        onChanged: (value) {
                          setState(() {
                            _myPreferences.blacktheme = value;
                            _myPreferences.commit();
                            Navigator.pushNamed(context, '/');
                          });
                        },
                      ),
                    ],
                  ),
                )
              ),
            ],
          ),
        )
    );
  }

  bool boolexchanger(bool base){
    if(base == true){
      return false;
    }else{
      return true;
    }
  }
}