import 'package:flutter/material.dart';
import 'package:sample_architecture/core/constant/enum/theme_enum.dart';
import 'package:sample_architecture/core/theme/light_theme.dart';

import '../theme/dark_theme.dart';

class ThemeNotifier extends ChangeNotifier {
  // static late final _instance;

  // static ThemeNotifier get instance {
  //   _instance = ThemeNotifier._init();
  //   return _instance;
  // }

  // ThemeNotifier._init();

  ThemeData _currentTheme = AppThemeLigth.instance.ligthTheme;
  ThemeData get currentTheme => AppThemeLigth.instance.ligthTheme;

  void changeTheme(Appthemes theme) {
    switch (theme) {
      case Appthemes.dark:
        _currentTheme = AppThemeDark.instance.darkTheme;
        break;

      case Appthemes.light:
        _currentTheme = AppThemeLigth.instance.ligthTheme;
        break;
    }
    notifyListeners();
  }
}
