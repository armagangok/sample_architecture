import 'package:flutter/material.dart';

import 'base_theme.dart';

class AppThemeDark extends AppTheme {
  static late final AppThemeDark _instance;
  static AppThemeDark get instance {
    _instance = AppThemeDark._init();
    return _instance;
  }

  AppThemeDark._init();

  ThemeData get darkTheme => ThemeData.dark().copyWith();
}
