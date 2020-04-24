import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  static double safeAreaHorizontal;
  static double safeAreaVertical;
  static double safeBlockHorizontal;
  static double safeBlockVertical;

  static double fixerHorizontal;
  static double fixerVertical;
  static double fixAllVer;
  static double fixAllHor;
  static double fixLilVer;
  static double fixLilHor;
  static double fixLil;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    safeAreaHorizontal = _mediaQueryData.padding.left +
        _mediaQueryData.padding.right;
    safeAreaVertical = _mediaQueryData.padding.top +
        _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth -
        safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight -
        safeAreaVertical) / 100;

    //My implementation from the code above
    fixerVertical = screenHeight.toInt()*1.0;
    fixerHorizontal = screenWidth.toInt()*1.0;
    fixAllVer= screenHeight.toInt() / 10;
    fixAllHor= screenWidth.toInt() / 10;
    fixLilVer = screenHeight.toInt() /100;
    fixLilHor = screenWidth.toInt() /100;
    fixLil = fixLilHor*fixLilVer;
  }
}