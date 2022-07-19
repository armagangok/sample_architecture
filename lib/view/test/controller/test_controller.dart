import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import '../../../core/constant/enum/theme_enum.dart';
import '../../../core/network/network_manager.dart';
import '../../../core/notifier/theme_notifier.dart';
import '../model/test_model.dart';

part 'test_controller.g.dart';

class TestController = TestControllerBase with _$TestController;

abstract class TestControllerBase with Store {
  BuildContext ctx;
  bool a = false;

  void setContext(BuildContext context) {
    ctx = context;
  }

  @observable
  double number1 = 0;
  TestControllerBase({
    required this.ctx,
  });

  @computed
  bool get isEven => number1 % 2 == 0;

  @action
  void incrementNumber() => number1 += 1;

  void changeTheme() {
    a = !a;

    Provider.of<ThemeNotifier>(ctx, listen: false)
        .changeTheme(a ? Appthemes.dark : Appthemes.light);
  }

  getSampleDataFromAPI() async {
    TestModel a = await NetworkManager.instance!
        .dioGet("https://jsonplaceholder.typicode.com/todos/1", TestModel());
    print(a.title);
  }
}
