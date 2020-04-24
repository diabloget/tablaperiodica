import 'package:flutter/material.dart';
import 'package:tablaperiodica/generalCode/preferences.dart';
import 'package:tablaperiodica/generalCode/sizeconfig.dart';
import 'package:tablaperiodica/generalCode/theme.dart';
import 'package:tablaperiodica/menu/appBarColor.dart';

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
                  "Preferencias", style: TextStyle(color: Color.fromARGB(255, 187, 187, 187), fontSize: 0.65*SizeConfig.fixLil)),
              ),
              Container(
                padding: EdgeInsets.only(left: 0.30*SizeConfig.fixLil, right: 0.30*SizeConfig.fixLil),
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
                          color: Themes.themer("letters"), fontSize: 0.35*SizeConfig.fixLil)),
                      Container(width: 2.3*SizeConfig.fixLil, color: Colors.orange,),
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
              Slider(
                value: _myPreferences.zoom,
                divisions: 4,
                max: 5,
                min: 1,
                onChanged: (value) {
                  setState(() {
                    _myPreferences.zoom = value;
                    _myPreferences.commit();
                  });
                },
                label: _myPreferences.zoom.toInt().toString(),
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