import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import 'core/constant/enum/theme_enum.dart';
import 'core/notifier/theme_notifier.dart';

part 'test_controller.g.dart';

class TestController = _TestControllerBase with _$TestController;

abstract class _TestControllerBase with Store {
  late final BuildContext ctx;

  void setContext(BuildContext context) {
    ctx = context;
  }

  @observable
  double number1 = 0;

  @computed
  bool get isEven => number1 % 2 == 0;

  @action
  void incrementNumber() => number1 += 1;

  void changeTheme(Appthemes theme) {
    Provider.of<ThemeNotifier>(ctx, listen: false).changeTheme(theme);
  }
}
