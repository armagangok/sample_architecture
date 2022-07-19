import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../navigation/service/navigation_service.dart';
import 'theme_notifier.dart';

class ProviderHelper {
  ProviderHelper._();
  static final instance = ProviderHelper._();

  List<SingleChildWidget> get providers => [
        ChangeNotifierProvider(create: (context) => ThemeNotifier()),
        Provider.value(value: NavigationService.instance)
      ];
}
