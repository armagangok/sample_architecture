import 'package:flutter/material.dart';

class LanguageManager {
  static late final LanguageManager _instance;
  static LanguageManager get instance {
    _instance = LanguageManager._init();
    return _instance;
  }

  LanguageManager._init();

  final enLocale = const Locale("en");

  List<Locale> get supportedLocales => [enLocale];
}
