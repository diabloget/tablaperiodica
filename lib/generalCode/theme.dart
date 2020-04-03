import 'dart:ui';

class Themes{
  static int black = 1;

  static Color themer(String item){
    if (black==1){
      if(item == "edge"){
        return Color.fromARGB(255, 0, 0, 0);

      }if(item == "inwhite") {
        return Color.fromARGB(255, 60, 63, 65);

      }if(item == "letters") {
        return Color.fromARGB(255, 187, 187, 187);

      }if(item == "background") {
        return Color.fromARGB(255, 43, 43, 43);

      }if(item == "whiteletter") {
        return Color.fromARGB(255, 0, 0, 0);

      }if(item == "whiteedge") {
        return Color.fromARGB(255, 0, 0, 0);

      }if(item == "blue") {
        return Color.fromARGB(255, 100, 203, 255);

      }if(item == "yellow") {
        return Color.fromARGB(255, 248, 248, 120);

      }if(item == "orange") {
        return Color.fromARGB(255, 248, 193, 134);

      }if(item == "green") {
        return Color.fromARGB(255, 134, 248, 153);

      }if(item == "bluegreen") {
        return Color.fromARGB(255, 83, 249, 191);

      }if(item == "red") {
        return Color.fromARGB(255, 252, 106, 106);

      }if(item == "eleletters") {
        return Color.fromARGB(255, 0, 0, 0);
      }


    }
    if(black==0){

      if(item == "edge"){
        return Color.fromARGB(255, 0, 0, 0);

      }if(item == "inwhite") {
        return Color.fromARGB(255, 255, 255, 255);

      }if(item == "letters") {
        return Color.fromARGB(255, 0, 0, 0);

      }if(item == "background") {
        return Color.fromARGB(255, 255, 255, 255);

      }if(item == "whiteletter") {
        return Color.fromARGB(255, 255, 255, 255);

      }if(item == "whiteedge") {
        return Color.fromARGB(255, 255, 255, 255);

      }if(item == "blue") {
        return Color.fromARGB(255, 100, 203, 255);

      }if(item == "yellow") {
        return Color.fromARGB(255, 248, 248, 120);

      }if(item == "orange") {
        return Color.fromARGB(255, 248, 193, 134);

      }if(item == "green") {
        return Color.fromARGB(255, 134, 248, 153);

      }if(item == "bluegreen") {
        return Color.fromARGB(255, 83, 249, 191);

      }if(item == "red") {
        return Color.fromARGB(255, 252, 106, 106);

      }if(item == "eleletters") {
        return Color.fromARGB(255, 0, 0, 0);
      }

    }
  }



}