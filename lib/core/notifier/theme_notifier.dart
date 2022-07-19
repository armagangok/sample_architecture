import 'package:flutter/material.dart';

import '../constant/enum/theme_enum.dart';
import '../theme/dark_theme.dart';
import '../theme/light_theme.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme = AppThemeLigth.instance.ligthTheme;
  ThemeData get currentTheme => _currentTheme;

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
