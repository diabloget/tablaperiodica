import 'dart:io';
import 'package:flutter/material.dart';
import 'package:tablaperiodica/generalCode/sizeconfig.dart';
import 'package:flutter/services.dart';
import 'package:tablaperiodica/generalCode/theme.dart';
import 'package:tablaperiodica/menu/appBarColor.dart';
import 'package:tablaperiodica/menu/menuDrawer.dart';


class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {

  void initState(){
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setEnabledSystemUIOverlays([
      //Its okay if there is nothing here :)
    ]);
  }

  Future<bool> _onBackPressed() {
        ()=> exit(0);
  }

  @override
  // Themes.themer("background")
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabla Periódica", style: TextStyle(color: Color.fromARGB(255, 220, 220, 220)),),
          flexibleSpace: AppBarColor.colorcontainer(),
        ),
        bottomNavigationBar: BottomAppBar(color: Themes.themer("background"), child: Container(color: Themes.themer("background"), height: 1.5*SizeConfig.fixAllVer),),
        drawer: MenuDrawer(),
        body: Container(
          color: Themes.themer("background"),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.web, color: Themes.themer("letters"), size: 1.5*SizeConfig.fixLil,),
                title: Center(child: Text("Arreglo Gil Chaverri", style: TextStyle(color: Themes.themer("letters"), fontSize: 0.75*SizeConfig.fixLil))),
                onTap: () {
                  SystemChrome.setPreferredOrientations([
                    DeviceOrientation.landscapeLeft,
                    DeviceOrientation.landscapeLeft,
                  ]);
                  Navigator.pushNamed(context, '/gil');
                },
              ),
              ListTile(
                leading: Icon(Icons.web, color: Themes.themer("letters"), size: 1.5*SizeConfig.fixLil),
                title: Center(child: Text("Arreglo Internacional", style: TextStyle(color: Themes.themer("letters"), fontSize: 0.75*SizeConfig.fixLil))),
                onTap: () {
                  SystemChrome.setPreferredOrientations([
                    DeviceOrientation.landscapeLeft,
                    DeviceOrientation.landscapeLeft,
                  ]);
                  Navigator.pushNamed(context, '/international');
                },
              ),
            ],
          ),
        )
      ),
    );
  }
}
