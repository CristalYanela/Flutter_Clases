import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  //Establecer el tema para la app
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  void changeTheme() {
    //si el tema es claro cambiar al tema obscuro y viceversa
    //_themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
