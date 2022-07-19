import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_architecture/core/initialization/cache/locale_manager.dart';

import 'core/constant/app/app_constants.dart';
import 'core/initialization/lang/language_manager.dart';
import 'core/navigation/route.dart';
import 'core/navigation/service/navigation_service.dart';
import 'core/notifier/provider_helper.dart';
import 'core/notifier/theme_notifier.dart';
import 'test_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocaleManager.prefrencesInit();
  await EasyLocalization.ensureInitialized();
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
    print("object");
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Provider.of<ThemeNotifier>(context).currentTheme,
      home: const TestView(),
      navigatorKey: NavigationService.instance.navigatorKey,
      onGenerateRoute: NavigatorRoute.instance.generateRoute,
    );
  }
}
