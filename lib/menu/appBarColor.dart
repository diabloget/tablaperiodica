import 'package:flutter/material.dart';

class AppBarColor{
  static Container colorcontainer(){
    return Container(
      decoration: BoxDecoration(
        gradient: new LinearGradient(
            colors: [
              const Color.fromARGB(255, 96, 54, 171),
              const Color.fromARGB(255, 144, 81, 255),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.15, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
        )
      );
  }

  static BoxDecoration boxDecoration(){
    return BoxDecoration(
      gradient: new LinearGradient(
          colors: [
            const Color.fromARGB(255, 96, 54, 171),
            const Color.fromARGB(255, 144, 81, 255),
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.15, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp),
    );
  }
}