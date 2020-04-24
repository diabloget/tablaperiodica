import 'package:flutter/widgets.dart';
import 'package:tablaperiodica/generalCode/preferences.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;

  static Preferences _myPreferences = Preferences();
  static double fixerHorizontal;
  static double fixerVertical;
  static double fixAllVer;
  static double fixAllHor;
  static double fixLilVer;
  static double fixLilHor;
  static double fixLil;
  static double fixLilZoomed;

  static double fixVerZoomed;
  static double fixHorZoomed;
  static double fixLilVerZ;
  static double fixLilHorZ;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;

    //My implementation from the code above
    fixerVertical = screenHeight.toInt()*6.0;
    fixerHorizontal = screenWidth.toInt()*6.0;
    fixAllVer= screenHeight.toInt() / 10;
    fixAllHor= screenWidth.toInt() / 10;
    fixLilVer = screenHeight.toInt() /100;
    fixLilHor = screenWidth.toInt() /100;
    fixLil = fixLilHor*fixLilVer;
    fixLilZoomed = fixLil*_myPreferences.zoom;

    fixVerZoomed = screenHeight * _myPreferences.zoom;
    fixHorZoomed = screenWidth * _myPreferences.zoom;
    fixLilVerZ = fixVerZoomed/100;
    fixLilHorZ = fixHorZoomed/100;

  }
}