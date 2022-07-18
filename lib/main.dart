import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_architecture/core/notifier/provider_helper.dart';
import 'package:sample_architecture/core/notifier/theme_notifier.dart';

import 'core/constant/app/app_constants.dart';
import 'core/initialization/lang/language_manager.dart';
import 'test_view.dart';

void main() {
  runApp(
    EasyLocalization(
      supportedLocales: LanguageManager.instance.supportedLocales,
      path: ApplicationConstants.LANG_ASSET_PATH,
      child: MultiProvider(
        providers: ProviderHelper.instance.providers,
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Provider.of<ThemeNotifier>(context, listen: false).currentTheme,
      home: const TestView(),
    );
  }
}
