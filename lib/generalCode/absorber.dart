import 'dart:async';
import 'package:flutter/material.dart';
import 'package:zoom_widget/zoom_widget.dart';

class Absorber {

  static bool absorberBool = false;

  static AbsorbPointer absorbBugs(Zoom child) {
    print("init booler :v");
    print(absorberBool);
    return AbsorbPointer(
      absorbing: false,
      child: child
    );
  }

  static void absorbmanager(){
    absorberBool = true;
  Timer(Duration(milliseconds: 5000), (){
    absorbexchanger();
    print(absorberBool);
  });
  }
  
  static void absorbexchanger() {
    //print("frutamadre y la fruta que me pario");
    absorberBool = false;
  }


}