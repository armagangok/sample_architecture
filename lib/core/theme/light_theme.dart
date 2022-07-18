import 'package:flutter/material.dart';

import 'base_theme.dart';

class AppThemeLigth extends AppTheme {
  static late final AppThemeLigth _instance;
  static AppThemeLigth get instance {
    _instance = AppThemeLigth._init();
    return _instance;
  }

  AppThemeLigth._init();

  ThemeData get ligthTheme => ThemeData.light().copyWith();
}
