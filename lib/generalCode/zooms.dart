import 'package:flutter/material.dart';
import 'package:tablaperiodica/generalCode/absorber.dart';
import 'package:tablaperiodica/generalCode/theme.dart';
import 'package:zoom_widget/zoom_widget.dart';

class Horizontalzoom{
  static Zoom genericZoom(Stack child, double height, double width){
    return Zoom(
      centerOnScale: true,
      initZoom: 0.2,
      zoomSensibility: 7,
      height: height,
      width: width,
      onScaleUpdate: pito,
      doubleTapZoom: true,
      canvasColor: Themes.themer("background"),
      backgroundColor:  Themes.themer("background"),
      colorScrollBars: Colors.black,
      opacityScrollBars: 0,
      child: Material(
        child: child,
      )
    );
  }


  static void pito(double x, double y){
    print("zopotamadre");
    Absorber.absorbmanager();
  }
}