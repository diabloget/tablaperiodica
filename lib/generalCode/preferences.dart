

import 'package:shared_preferences/shared_preferences.dart';

class Preferences{
  static const  BLACKTHEME = "blacktheme";
  static const  ZOOM = "zoom";

  static final Preferences instance = Preferences._internal();


  //Campos a manejar
  SharedPreferences _sharedPreferences;
  bool blacktheme = false;
  double zoom = 1;

  Preferences._internal();

  factory Preferences()=>instance;

  Future<SharedPreferences> get preferences async{
    if(_sharedPreferences != null){
      return _sharedPreferences;
    }else{
      _sharedPreferences = await  SharedPreferences.getInstance();
      blacktheme = _sharedPreferences.getBool(BLACKTHEME);
      zoom = _sharedPreferences.getDouble(ZOOM);

      if(blacktheme == null){
        blacktheme = false;
      }
      if(zoom == null){
        zoom = 1;
      }

      return _sharedPreferences;

    }
  }

  Future<bool> commit() async {
    await _sharedPreferences.setBool(BLACKTHEME, blacktheme);
    await _sharedPreferences.setDouble(ZOOM, zoom);
  }

  Future<Preferences> init() async{
    _sharedPreferences = await preferences;
    return this;
  }
}