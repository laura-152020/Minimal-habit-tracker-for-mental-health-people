import 'package:cart/theme/dark_mode.dart';
import 'package:cart/theme/light_mode.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
   //initially, light mode 
   ThemeData _themeData = lightMode;

   // get current theme
   ThemeData get themeData => _themeData;

   // is current theme dark mode
   bool get isDarkMode => _themeData == darkMode;

  // set theme 
  set themeData(ThemeData themeData){
    _themeData = themeData; 
    notifyListeners();
  }

  //toggle theme
  void toggleTheme() {
    if(_themeData == lightMode){
      themeData = darkMode;
    }else{
      themeData = lightMode;
    }
  }

}