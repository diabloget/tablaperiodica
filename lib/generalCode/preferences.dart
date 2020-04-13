import 'package:shared_preferences/shared_preferences.dart';

class Preferences{
  static const  BLACKTHEME = "blacktheme";

  static final Preferences instance = Preferences._internal();


  //Campos a manejar
  SharedPreferences _sharedPreferences;
  bool blacktheme = false;

  Preferences._internal();

  factory Preferences()=>instance;

  Future<SharedPreferences> get preferences async{
    if(_sharedPreferences != null){
      return _sharedPreferences;
    }else{
      _sharedPreferences = await SharedPreferences.getInstance();
      blacktheme = _sharedPreferences.getBool(BLACKTHEME);

      if(blacktheme == null){
        blacktheme = false;
      }
      return _sharedPreferences;

    }

  }
  Future<bool> commit() async {
    await _sharedPreferences.setBool(BLACKTHEME, blacktheme);
  }

  Future<Preferences> init() async{
    _sharedPreferences = await preferences;
    return this;
  }


}